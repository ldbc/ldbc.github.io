#!/bin/bash

set -euo pipefail

echo example-directed      && wget -O example-directed.tar.zst     https://datasets.ldbcouncil.org/graphalytics/example-directed.tar.zst     && tar --use-compress-program=unzstd -xvf example-directed.tar.zst
echo example-undirected    && wget -O example-undirected.tar.zst   https://datasets.ldbcouncil.org/graphalytics/example-undirected.tar.zst   && tar --use-compress-program=unzstd -xvf example-undirected.tar.zst
echo test-bfs-directed     && wget -O test-bfs-directed.tar.zst    https://datasets.ldbcouncil.org/graphalytics/test-bfs-directed.tar.zst    && tar --use-compress-program=unzstd -xvf test-bfs-directed.tar.zst
echo test-bfs-undirected   && wget -O test-bfs-undirected.tar.zst  https://datasets.ldbcouncil.org/graphalytics/test-bfs-undirected.tar.zst  && tar --use-compress-program=unzstd -xvf test-bfs-undirected.tar.zst
echo test-cdlp-directed    && wget -O test-cdlp-directed.tar.zst   https://datasets.ldbcouncil.org/graphalytics/test-cdlp-directed.tar.zst   && tar --use-compress-program=unzstd -xvf test-cdlp-directed.tar.zst
echo test-cdlp-undirected  && wget -O test-cdlp-undirected.tar.zst https://datasets.ldbcouncil.org/graphalytics/test-cdlp-undirected.tar.zst && tar --use-compress-program=unzstd -xvf test-cdlp-undirected.tar.zst
echo test-pr-directed      && wget -O test-pr-directed.tar.zst     https://datasets.ldbcouncil.org/graphalytics/test-pr-directed.tar.zst     && tar --use-compress-program=unzstd -xvf test-pr-directed.tar.zst
echo test-pr-undirected    && wget -O test-pr-undirected.tar.zst   https://datasets.ldbcouncil.org/graphalytics/test-pr-undirected.tar.zst   && tar --use-compress-program=unzstd -xvf test-pr-undirected.tar.zst
echo test-lcc-directed     && wget -O test-lcc-directed.tar.zst    https://datasets.ldbcouncil.org/graphalytics/test-lcc-directed.tar.zst    && tar --use-compress-program=unzstd -xvf test-lcc-directed.tar.zst
echo test-lcc-undirected   && wget -O test-lcc-undirected.tar.zst  https://datasets.ldbcouncil.org/graphalytics/test-lcc-undirected.tar.zst  && tar --use-compress-program=unzstd -xvf test-lcc-undirected.tar.zst
echo test-wcc-directed     && wget -O test-wcc-directed.tar.zst    https://datasets.ldbcouncil.org/graphalytics/test-wcc-directed.tar.zst    && tar --use-compress-program=unzstd -xvf test-wcc-directed.tar.zst
echo test-wcc-undirected   && wget -O test-wcc-undirected.tar.zst  https://datasets.ldbcouncil.org/graphalytics/test-wcc-undirected.tar.zst  && tar --use-compress-program=unzstd -xvf test-wcc-undirected.tar.zst
echo test-sssp-directed    && wget -O test-sssp-directed.tar.zst   https://datasets.ldbcouncil.org/graphalytics/test-sssp-directed.tar.zst   && tar --use-compress-program=unzstd -xvf test-sssp-directed.tar.zst
echo test-sssp-undirected  && wget -O test-sssp-undirected.tar.zst https://datasets.ldbcouncil.org/graphalytics/test-sssp-undirected.tar.zst && tar --use-compress-program=unzstd -xvf test-sssp-undirected.tar.zst
