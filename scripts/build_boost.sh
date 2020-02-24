#!/bin/sh
cd src/boost_1_72_0

./bootstrap.sh 
echo "    using gcc : : x86_64-w64-mingw32-g++ ;" >> project-config.jam
./b2 install toolset=gcc --prefix=/usr/local/boost