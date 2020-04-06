#!/bin/bash

# fail on first error
set -e

cd $SRC_DIR
mkdir build && cd build
cmake -DGALARIO_CHECK_CUDA=1 -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=$PREFIX ..
make
# make test
make install
