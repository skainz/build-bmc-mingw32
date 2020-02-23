#!/bin/sh -e
cd src/xerces-c-3.0.1
./configure --host x86_64-w64-mingw32 --prefix=/usr/local/xerces/xerces-c-3.0.1 --disable-threads --disable-network
make
make install
