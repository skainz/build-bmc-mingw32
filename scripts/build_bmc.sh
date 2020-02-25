#!/bin/bash
cd /bmc


source cmake_buildline_mingw32-g++-posix

make dtdbin
make xsdbin
make bmc
