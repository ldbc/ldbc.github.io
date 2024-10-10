#!/bin/bash

set -euo pipefail

echo graph500-23     && wget -O graph500-23.tar.zst    https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/graph500-23.tar.zst    && tar --use-compress-program=unzstd -xvf graph500-23.tar.zst
echo graph500-24     && wget -O graph500-24.tar.zst    https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/graph500-24.tar.zst    && tar --use-compress-program=unzstd -xvf graph500-24.tar.zst
echo datagen-8_0-fb  && wget -O datagen-8_0-fb.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_0-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_0-fb.tar.zst
echo datagen-8_1-fb  && wget -O datagen-8_1-fb.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_1-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_1-fb.tar.zst
echo datagen-8_2-zf  && wget -O datagen-8_2-zf.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_2-zf.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_2-zf.tar.zst
echo datagen-8_3-zf  && wget -O datagen-8_3-zf.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_3-zf.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_3-zf.tar.zst
echo datagen-8_4-fb  && wget -O datagen-8_4-fb.tar.zst https://pub-383410a98aef4cb686f0c7601eddd25f.r2.dev/graphalytics/datagen-8_4-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-8_4-fb.tar.zst
