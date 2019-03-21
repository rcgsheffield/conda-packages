#!/bin/bash

./configure --prefix=$PREFIX --with-psm2 --with-sge
make -j 16
make check
make install
