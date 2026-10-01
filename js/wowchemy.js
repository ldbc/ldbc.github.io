
/*************************************************
 *  Wowchemy
 *  https://github.com/wowchemy/wowchemy-hugo-modules
 *
 *  Core JS functions and initialization.
 **************************************************/

// Stripped-down version, only kept filtering

/* ---------------------------------------------------------------------------
 * Filter publications.
 * --------------------------------------------------------------------------- */

// Active publication filters.
let pubFilters = {};

// Search term.
let searchRegex;

// Filter values (concatenated).
let filterValues;

// Publication container.
let $grid_pubs = $('#container-publications');

// Initialise Isotope publication layout if required.
if ($grid_pubs.length) {
  $grid_pubs.isotope({
    itemSelector: '.isotope-item',
    percentPosition: true,
    masonry: {
      // Use Bootstrap compatible grid layout.
      columnWidth: '.grid-sizer',
    },
    filter: function () {
      let $this = $(this);
      let searchResults = searchRegex ? $this.text().match(searchRegex) : true;
      let filterResults = filterValues ? $this.is(filterValues) : true;
      return searchResults && filterResults;
    },
  });

  // Filter by search term.
  let $quickSearch = $('.filter-search').keyup(
    debounce(function () {
      searchRegex = new RegExp($quickSearch.val(), 'gi');
      $grid_pubs.isotope();
    }),
  );

  $('.pub-filters').on('change', function () {
    let $this = $(this);

    // Get group key.
    let filterGroup = $this[0].getAttribute('data-filter-group');

    // Set filter for group.
    pubFilters[filterGroup] = this.value;

    // Combine filters.
    filterValues = concatValues(pubFilters);

    // Activate filters.
    $grid_pubs.isotope();

    // If filtering by publication type, update the URL hash to enable direct linking to results.
    if (filterGroup === 'pubtype') {
      // Set hash URL to current filter.
      let url = $(this).val();
      if (url.substr(0, 9) === '.pubtype-') {
        window.location.hash = url.substr(9);
      } else {
        window.location.hash = '';
      }
    }
  });
}

// Debounce input to prevent spamming filter requests.
function debounce(fn, threshold) {
  let timeout;
  threshold = threshold || 100;
  return function debounced() {
    clearTimeout(timeout);
    let args = arguments;
    let _this = this;

    function delayed() {
      fn.apply(_this, args);
    }

    timeout = setTimeout(delayed, threshold);
  };
}

// Flatten object by concatenating values.
function concatValues(obj) {
  let value = '';
  for (let prop in obj) {
    value += obj[prop];
  }
  return value;
}

// Filter publications according to hash in URL.
function filter_publications() {
  // Check for Isotope publication layout.
  if (!$grid_pubs.length) return;

  let urlHash = window.location.hash.replace('#', '');
  let filterValue = '*';

  // Check if hash is numeric.
  if (urlHash != '' && !isNaN(urlHash)) {
    filterValue = '.pubtype-' + urlHash;
  }

  // Set filter.
  let filterGroup = 'pubtype';
  pubFilters[filterGroup] = filterValue;
  filterValues = concatValues(pubFilters);

  // Activate filters.
  $grid_pubs.isotope();

  // Set selected option.
  $('.pubtype-select').val(filterValue);
}

/* ---------------------------------------------------------------------------
 * On window loaded.
 * --------------------------------------------------------------------------- */

$(window).on('load', function () {
  // Re-initialize Scrollspy with dynamic navbar height offset.
  fixScrollspy();

  // Detect instances of the Portfolio widget.
  let isotopeInstances = document.querySelectorAll('.projects-container');
  let isotopeInstancesCount = isotopeInstances.length;

  // Fix ScrollSpy highlighting previous Book page ToC link for some anchors.
  // Check if isotopeInstancesCount>0 as that case performs its own scrollToAnchor.
  if (window.location.hash && isotopeInstancesCount === 0) {
    scrollToAnchor(decodeURIComponent(window.location.hash), 0);
  }

  // Scroll Book page's active ToC sidebar link into view.
  // Action after calling scrollToAnchor to fix Scrollspy highlighting otherwise wrong link may have active class.
  let child = document.querySelector('.docs-toc .nav-link.active');
  let parent = document.querySelector('.docs-toc');
  if (child && parent) {
    scrollParentToChild(parent, child);
  }

  // Enable images to be zoomed.
  let zoomOptions = {};
  if (document.body.classList.contains('dark')) {
    zoomOptions.background = 'rgba(0,0,0,0.9)';
  } else {
    zoomOptions.background = 'rgba(255,255,255,0.9)';
  }
  // mediumZoom('[data-zoomable]', zoomOptions);

  // Init Isotope Layout Engine for instances of the Portfolio widget.
  let isotopeCounter = 0;
  isotopeInstances.forEach(function (isotopeInstance, index) {
    console.debug(`Loading Isotope instance ${index}`);

    // Isotope instance
    let iso;

    // Get the layout for this Isotope instance
    let isoSection = isotopeInstance.closest('section');
    let layout = '';
    if (isoSection.querySelector('.isotope').classList.contains('js-layout-row')) {
      layout = 'fitRows';
    } else {
      layout = 'masonry';
    }

    // Get default filter (if any) for this instance
    let defaultFilter = isoSection.querySelector('.default-project-filter');
    let filterText = '*';
    if (defaultFilter !== null) {
      filterText = defaultFilter.textContent;
    }
    console.debug(`Default Isotope filter: ${filterText}`);

    // Init Isotope instance once its images have loaded.
    imagesLoaded(isotopeInstance, function () {
      iso = new Isotope(isotopeInstance, {
        itemSelector: '.isotope-item',
        layoutMode: layout,
        masonry: {
          gutter: 20,
        },
        filter: filterText,
      });

      // Filter Isotope items when a toolbar filter button is clicked.
      let isoFilterButtons = isoSection.querySelectorAll('.project-filters a');
      isoFilterButtons.forEach((button) =>
        button.addEventListener('click', (e) => {
          e.preventDefault();
          let selector = button.getAttribute('data-filter');

          // Apply filter
          console.debug(`Updating Isotope filter to ${selector}`);
          iso.arrange({filter: selector});

          // Update active toolbar filter button
          button.classList.remove('active');
          button.classList.add('active');
          let buttonSiblings = getSiblings(button);
          buttonSiblings.forEach((buttonSibling) => {
            buttonSibling.classList.remove('active');
            buttonSibling.classList.remove('all');
          });
        }),
      );

      // Check if all Isotope instances have loaded.
      incrementIsotopeCounter();
    });
  });

  // Hook to perform actions once all Isotope instances have loaded.
  function incrementIsotopeCounter() {
    isotopeCounter++;
    if (isotopeCounter === isotopeInstancesCount) {
      console.debug(`All Portfolio Isotope instances loaded.`);
      // Once all Isotope instances and their images have loaded, scroll to hash (if set).
      // Prevents scrolling to the wrong location due to the dynamic height of Isotope instances.
      // Each Isotope instance height is affected by applying filters and loading images.
      // Without this logic, the scroll location can appear correct, but actually a few pixels out and hence Scrollspy
      // can highlight the wrong nav link.
      if (window.location.hash) {
        scrollToAnchor(decodeURIComponent(window.location.hash), 0);
      }
    }
  }

  // Enable publication filter for publication index page.
  if ($('.pub-filters-select')) {
    filter_publications();
    // Useful for changing hash manually (e.g. in development):
    // window.addEventListener('hashchange', filter_publications, false);
  }

  // Load citation modal on 'Cite' click.
  $('.js-cite-modal').click(function (e) {
    e.preventDefault();
    let filename = $(this).attr('data-filename');
    let modal = $('#modal');
    modal.find('.modal-body code').load(filename, function (response, status, xhr) {
      if (status == 'error') {
        let msg = 'Error: ';
        $('#modal-error').html(msg + xhr.status + ' ' + xhr.statusText);
      } else {
        $('.js-download-cite').attr('href', filename);
      }
    });
    modal.modal('show');
  });

  // Copy citation text on 'Copy' click.
  $('.js-copy-cite').click(function (e) {
    e.preventDefault();
    // Get selection.
    let range = document.createRange();
    let code_node = document.querySelector('#modal .modal-body');
    range.selectNode(code_node);
    window.getSelection().addRange(range);
    try {
      // Execute the copy command.
      document.execCommand('copy');
    } catch (e) {
      console.log('Error: citation copy failed.');
    }
    // Remove selection.
    window.getSelection().removeRange(range);
  });

  // Initialise Google Maps if necessary.
  // initMap();

  // Print latest version of GitHub projects.
  // // let githubReleaseSelector = '.js-github-release';
  // // if ($(githubReleaseSelector).length > 0) {
  // //   printLatestRelease(githubReleaseSelector, $(githubReleaseSelector).data('repo'));
  // // }

  // // Parse Wowchemy keyboard shortcuts.
  // document.addEventListener('keyup', (event) => {
  //   if (event.code === 'Escape') {
  //     const body = document.body;
  //     if (body.classList.contains('searching')) {
  //       // Close search dialog.
  //       toggleSearchDialog();
  //     }
  //   }
  //   // Use `key` to check for slash. Otherwise, with `code` we need to check for modifiers.
  //   if (event.key === '/') {
  //     let focusedElement =
  //       (document.hasFocus() &&
  //         document.activeElement !== document.body &&
  //         document.activeElement !== document.documentElement &&
  //         document.activeElement) ||
  //       null;
  //     let isInputFocused = focusedElement instanceof HTMLInputElement || focusedElement instanceof HTMLTextAreaElement;
  //     if (searchEnabled && !isInputFocused) {
  //       // Open search dialog.
  //       event.preventDefault();
  //       toggleSearchDialog();
  //     }
  //   }
  // });

  // // Search event handler
  // // Check that built-in search or Algolia enabled.
  // if (searchEnabled) {
  //   // On search icon click toggle search dialog.
  //   $('.js-search').click(function (e) {
  //     e.preventDefault();
  //     toggleSearchDialog();
  //   });
  // }

  // Init. author notes (tooltips).
  $('[data-toggle="tooltip"]').tooltip();
});


// Make Scrollspy responsive.
function fixScrollspy() {
  let $body = $('body');
  let data = $body.data('bs.scrollspy');
  if (data) {
    data._config.offset = getNavBarHeight();
    $body.data('bs.scrollspy', data);
    $body.scrollspy('refresh');
  }
}
