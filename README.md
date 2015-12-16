iceberg Conda Recipies
======================

This repository is for recipies for the Sheffield
[iceberg](http://rcg.group.shef.ac.uk/iceberg/) cluster.

## Writing Packages

Each package should go in its own directory and should be written following the
documentation here: http://conda.pydata.org/docs/building/build.html

## Building Packages

Once you have written a recipie you can build it using:

    conda build mypackage_dir

You will need the `apps/python/conda` package loaded, you should be in the
default (root) environment.

If you want to build for different Python versions other than the default
Python 3.4 you need to specify them:

    conda build --python 2.7 --python 3.5 mypackage_dir

Note: Currently you need to build the packages as root to make them availible
in the central repo. This will be changed.

## Installing Packages

Once there is a package in the `/usr/local/packages6/conda/conda-bld/linux-64`
directory (and the package list is upto date) you can install it following the
isntructions here:
http://rcg.group.shef.ac.uk/iceberg/software/apps/python.html#using-python-with-mpi
