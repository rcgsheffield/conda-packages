# ShARC Conda recipies

This repository contains Conda package recipies for
the University of Sheffield's [ShARC](http://docs.hpc.shef.ac.uk) HPC cluster.

These include OpenMPI (and packages that depend on OpenMPI) built with support for:
 - the high-bandwidth, low-latency Intel Omni-Path interconnects used in ShARC
 - the Grid Engine job scheduler

## Writing packages

Each package should go in its own directory and
should be written following the [Conda documentation on package building](https://conda.pydata.org/docs/building/build.html).

## Building packages

Once you have written a recipie you can build it using:

```sh
conda build mypackage_dir
```

You will need the `apps/python/conda` [environment module loaded](http://docs.hpc.shef.ac.uk/en/latest/hpc/modules.html) and 
you should be in the default (`root`) Conda environment.

If you want to build for different Python versions other than the default
Python 3.4 you need to specify them:

```sh
conda build --python 2.7 --python 3.5 --python 3.6 mypackage_dir
```

Note: To build packages need to make sure you have write-access to `/usr/local/packages/apps/conda/conda-bld/`.

## Installing Packages

Once there is a package in the `/usr/local/packages/apps/conda/conda-bld/linux-64` directory 
(and the package list is up-to-date) 
you can install it into an arbitrary conda environment on ShARC by 
following [these instructions](http://docs.hpc.shef.ac.uk/en/latest/sharc/software/apps/python.html#using-python-with-mpi).
