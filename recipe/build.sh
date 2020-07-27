#!/bin/bash
SHTNS="shtns-3.4.2"
cd src
./configure --enable-python --disable-openmp --prefix=${PREFIX}
make
make install
