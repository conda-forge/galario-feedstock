#!/bin/bash

# fail on first error
set -e

cd $SRC_DIR
mkdir build && cd build
cmake -DGALARIO_CHECK_CUDA=1 ..
make
# make test
make install
