#!/bin/sh
cd src/boost_1_72_0


./bootstrap.sh mingw

echo "using gcc : mingw32 : x86_64-w64-mingw32-g++ ;" > user-config.jam
./b2 install --user-config=user-config.jam --prefix=/usr/local/boost --with-program_options


#./bootstrap.sh
#echo "    using gcc : : x86_64-w64-mingw32-g++ ;" >> project-config.jam
#./b2 install toolset=gcc --prefix=/usr/local/boost --with-program_options
