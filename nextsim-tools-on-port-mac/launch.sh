#!/bin/bash
NAME=pynextsimf_shom

docker run --rm -it -p 8888:8888 -v $HOME:$HOME \
    -v /Users/auraoupa/Data/nextsim/small-arctic-10km-sidfex:/data \
    -v /Users/auraoupa/Work/git/n/nextsim200:/nextsim \
    -v /Users/auraoupa/Work/git/n/nextsim-tools:/nextsim-tools \
    -v /Users/auraoupa/Work/git/n/nextsim-env:/nextsim-env \
    -v /Users/auraoupa/Work/git/plots_nextsim:/plots \
    $NAME \
    jupyter notebook --port 8888 --ip 0.0.0.0 --allow-root \
    --NotebookApp.token='' --NotebookApp.password='' \
    --no-browser --notebook-dir /plots
 


