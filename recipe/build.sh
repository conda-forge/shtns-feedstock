#!/bin/bash
SHTNS="shtns-3.6.1"
cd src
alias gcc=${CC}
python setup.py install
