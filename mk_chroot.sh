#!/bin/sh

DIST="buster"
debootstrap $DIST chroot http://ftp.tugraz.at/mirror/debian
cp -r scripts chroot
chroot chroot apt install git cmake wine g++-mingw-w64 -y
