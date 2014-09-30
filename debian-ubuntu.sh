#!/bin/bash

MIRRORDIR="$(dirname $0)/debian-ubuntu"
[[ $MIRRORDIR == /* ]] || MIRRORDIR=$(pwd)/$MIRRORDIR

sed -i "s:^set base_path.*$:set base_path\t$MIRRORDIR:" $MIRRORDIR/debian-ubuntu.mirror.list
echo "Apt-mirror ..."
apt-mirror $MIRRORDIR/debian-ubuntu.mirror.list
