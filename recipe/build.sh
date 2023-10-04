#!/bin/bash
SHTNS="shtns-3.6.1"
cd src
./configure --enable-python --disable-openmp --prefix=${PREFIX} --enable-kernel-compiler=${CC}
make
make install
