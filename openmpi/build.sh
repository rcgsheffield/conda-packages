#!/bin/bash

./configure --prefix=$PREFIX
make -j 16
make check
make install
