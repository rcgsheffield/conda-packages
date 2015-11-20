#!/bin/bash

export CC=mpicc
export FC=mpif90

./configure --prefix=$PREFIX --enable-linux-lfs --with-zlib=$PREFIX --with-ssl --enable-fortran --enable-fortran2003 --enable-shared --enable-parallel
make
make install

rm -rf $PREFIX/share/hdf5_examples
