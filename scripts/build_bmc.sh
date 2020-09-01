#!/bin/bash

cd /
apt install -y wget
wget "https://familiekainz.at/bmc/qt-5.15.0-static.tar.lz"

cd /bmc



source cmake_buildline_mingw32-g++-posix

make dtdbin
make xsdbin
make bmc
