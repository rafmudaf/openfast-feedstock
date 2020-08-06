#!/bin/bash

mkdir build
cd build

cmake \
    -DDOUBLE_PRECISION=OFF \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DCMAKE_INSTALL_LIBDIR=lib \
    ..

make -j"${CPU_COUNT}" install
