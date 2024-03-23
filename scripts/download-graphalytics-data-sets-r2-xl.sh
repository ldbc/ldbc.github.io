#!/bin/bash

set -euo pipefail

echo com-friendster   && wget -O com-friendster.tar.zst  https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/com-friendster.tar.zst  && tar --use-compress-program=unzstd -xvf com-friendster.tar.zst
echo datagen-9_0-fb   && wget -O datagen-9_0-fb.tar.zst  https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-9_0-fb.tar.zst  && tar --use-compress-program=unzstd -xvf datagen-9_0-fb.tar.zst
echo datagen-9_1-fb   && wget -O datagen-9_1-fb.tar.zst  https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-9_1-fb.tar.zst  && tar --use-compress-program=unzstd -xvf datagen-9_1-fb.tar.zst
echo datagen-9_2-zf   && wget -O datagen-9_2-zf.tar.zst  https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-9_2-zf.tar.zst  && tar --use-compress-program=unzstd -xvf datagen-9_2-zf.tar.zst
echo datagen-9_3-zf   && wget -O datagen-9_3-zf.tar.zst  https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-9_3-zf.tar.zst  && tar --use-compress-program=unzstd -xvf datagen-9_3-zf.tar.zst
echo datagen-9_4-fb   && wget -O datagen-9_4-fb.tar.zst  https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-9_4-fb.tar.zst  && tar --use-compress-program=unzstd -xvf datagen-9_4-fb.tar.zst
echo datagen-sf3k-fb  && wget -O datagen-sf3k-fb.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-sf3k-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-sf3k-fb.tar.zst
echo graph500-26      && wget -O graph500-26.tar.zst     https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/graph500-26.tar.zst     && tar --use-compress-program=unzstd -xvf graph500-26.tar.zst
echo graph500-27      && wget -O graph500-27.tar.zst     https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/graph500-27.tar.zst     && tar --use-compress-program=unzstd -xvf graph500-27.tar.zst
echo twitter_mpi      && wget -O twitter_mpi.tar.zst     https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/twitter_mpi.tar.zst     && tar --use-compress-program=unzstd -xvf twitter_mpi.tar.zst
