#!/bin/sh

DIST="buster"
debootstrap $DIST chroot http://ftp.tugraz.at/mirror/debian
