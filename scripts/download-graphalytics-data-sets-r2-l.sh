#!/bin/bash

set -euo pipefail

echo graph500-25     && wget -O graph500-25.tar.zst    https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/graph500-25.tar.zst    && tar --use-compress-program=unzstd -xvf graph500-25.tar.zst
echo datagen-8_5-fb  && wget -O datagen-8_5-fb.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_5-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_5-fb.tar.zst
echo datagen-8_6-fb  && wget -O datagen-8_6-fb.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_6-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_6-fb.tar.zst
echo datagen-8_7-zf  && wget -O datagen-8_7-zf.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_7-zf.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_7-zf.tar.zst
echo datagen-8_8-zf  && wget -O datagen-8_8-zf.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_8-zf.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_8-zf.tar.zst
echo datagen-8_9-fb  && wget -O datagen-8_9-fb.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_9-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_9-fb.tar.zst
