#!/bin/bash

./configure --prefix=$PREFIX --with-psm2
make -j 16
make check
make install
