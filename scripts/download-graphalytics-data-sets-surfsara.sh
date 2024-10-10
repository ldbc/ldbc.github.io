#!/bin/bash

set -euo pipefail

echo cit-Patents.tar.zst         && wget -O cit-Patents.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/cit-Patents.tar.zst        && tar --use-compress-program=unzstd -xvf cit-Patents.tar.zst
echo com-friendster.tar.zst      && wget -O com-friendster.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/com-friendster.tar.zst     && tar --use-compress-program=unzstd -xvf com-friendster.tar.zst
echo datagen-7_5-fb.tar.zst      && wget -O datagen-7_5-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-7_5-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-7_5-fb.tar.zst
echo datagen-7_6-fb.tar.zst      && wget -O datagen-7_6-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-7_6-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-7_6-fb.tar.zst
echo datagen-7_7-zf.tar.zst      && wget -O datagen-7_7-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-7_7-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-7_7-zf.tar.zst
echo datagen-7_8-zf.tar.zst      && wget -O datagen-7_8-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-7_8-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-7_8-zf.tar.zst
echo datagen-7_9-fb.tar.zst      && wget -O datagen-7_9-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-7_9-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-7_9-fb.tar.zst
echo datagen-8_0-fb.tar.zst      && wget -O datagen-8_0-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_0-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_0-fb.tar.zst
echo datagen-8_1-fb.tar.zst      && wget -O datagen-8_1-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_1-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_1-fb.tar.zst
echo datagen-8_2-zf.tar.zst      && wget -O datagen-8_2-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_2-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_2-zf.tar.zst
echo datagen-8_3-zf.tar.zst      && wget -O datagen-8_3-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_3-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_3-zf.tar.zst
echo datagen-8_4-fb.tar.zst      && wget -O datagen-8_4-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_4-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_4-fb.tar.zst
echo datagen-8_5-fb.tar.zst      && wget -O datagen-8_5-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_5-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_5-fb.tar.zst
echo datagen-8_6-fb.tar.zst      && wget -O datagen-8_6-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_6-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_6-fb.tar.zst
echo datagen-8_7-zf.tar.zst      && wget -O datagen-8_7-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_7-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_7-zf.tar.zst
echo datagen-8_8-zf.tar.zst      && wget -O datagen-8_8-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_8-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_8-zf.tar.zst
echo datagen-8_9-fb.tar.zst      && wget -O datagen-8_9-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-8_9-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-8_9-fb.tar.zst
echo datagen-9_0-fb.tar.zst      && wget -O datagen-9_0-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-9_0-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-9_0-fb.tar.zst
echo datagen-9_1-fb.tar.zst      && wget -O datagen-9_1-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-9_1-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-9_1-fb.tar.zst
echo datagen-9_2-zf.tar.zst      && wget -O datagen-9_2-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-9_2-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-9_2-zf.tar.zst
echo datagen-9_3-zf.tar.zst      && wget -O datagen-9_3-zf.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-9_3-zf.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-9_3-zf.tar.zst
echo datagen-9_4-fb.tar.zst      && wget -O datagen-9_4-fb.tar.zst     https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-9_4-fb.tar.zst     && tar --use-compress-program=unzstd -xvf datagen-9_4-fb.tar.zst
echo datagen-sf10k-fb.tar.zst    && wget -O datagen-sf10k-fb.tar.zst   https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-sf10k-fb.tar.zst   && tar --use-compress-program=unzstd -xvf datagen-sf10k-fb.tar.zst
echo datagen-sf3k-fb.tar.zst     && wget -O datagen-sf3k-fb.tar.zst    https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/datagen-sf3k-fb.tar.zst    && tar --use-compress-program=unzstd -xvf datagen-sf3k-fb.tar.zst
echo dota-league.tar.zst         && wget -O dota-league.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/dota-league.tar.zst        && tar --use-compress-program=unzstd -xvf dota-league.tar.zst
echo example-directed.tar.zst    && wget -O example-directed.tar.zst   https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/example-directed.tar.zst   && tar --use-compress-program=unzstd -xvf example-directed.tar.zst
echo example-undirected.tar.zst  && wget -O example-undirected.tar.zst https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/example-undirected.tar.zst && tar --use-compress-program=unzstd -xvf example-undirected.tar.zst
echo graph500-22.tar.zst         && wget -O graph500-22.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-22.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-22.tar.zst
echo graph500-23.tar.zst         && wget -O graph500-23.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-23.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-23.tar.zst
echo graph500-24.tar.zst         && wget -O graph500-24.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-24.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-24.tar.zst
echo graph500-25.tar.zst         && wget -O graph500-25.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-25.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-25.tar.zst
echo graph500-26.tar.zst         && wget -O graph500-26.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-26.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-26.tar.zst
echo graph500-27.tar.zst         && wget -O graph500-27.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-27.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-27.tar.zst
echo graph500-28.tar.zst         && wget -O graph500-28.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-28.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-28.tar.zst
echo graph500-29.tar.zst         && wget -O graph500-29.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-29.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-29.tar.zst
echo graph500-30.tar.zst         && wget -O graph500-30.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/graph500-30.tar.zst        && tar --use-compress-program=unzstd -xvf graph500-30.tar.zst
echo kgs.tar.zst                 && wget -O kgs.tar.zst                https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/kgs.tar.zst                && tar --use-compress-program=unzstd -xvf kgs.tar.zst
echo twitter_mpi.tar.zst         && wget -O twitter_mpi.tar.zst        https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/twitter_mpi.tar.zst        && tar --use-compress-program=unzstd -xvf twitter_mpi.tar.zst
echo wiki-Talk.tar.zst           && wget -O wiki-Talk.tar.zst          https://repository.surfsara.nl/datasets/cwi/ldbc-graphalytics-2023/files/wiki-Talk.tar.zst          && tar --use-compress-program=unzstd -xvf wiki-Talk.tar.zst
