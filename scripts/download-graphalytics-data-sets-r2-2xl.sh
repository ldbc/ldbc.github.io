#!/bin/bash

set -euo pipefail

echo datagen-sf10k-fb  && wget -O datagen-sf10k-fb.tar.zst https://datasets.ldbcouncil.org/graphalytics/datagen-sf10k-fb.tar.zst && tar --use-compress-program=unzstd -xvf datagen-sf10k-fb.tar.zst
echo graph500-28       && wget -O graph500-28.tar.zst      https://datasets.ldbcouncil.org/graphalytics/graph500-28.tar.zst      && tar --use-compress-program=unzstd -xvf graph500-28.tar.zst
echo graph500-29       && wget -O graph500-29.tar.zst      https://datasets.ldbcouncil.org/graphalytics/graph500-29.tar.zst      && tar --use-compress-program=unzstd -xvf graph500-29.tar.zst
echo graph500-30       && wget -O graph500-30.tar.zst      https://datasets.ldbcouncil.org/graphalytics/graph500-30.tar.zst      && tar --use-compress-program=unzstd -xvf graph500-30.tar.zst
