#!/bin/sh

MIRRORDIR="$(dirname $0)/debian-ubuntu"

sed -i "s:^set base_path.*$:set base_path\t$MIRRORDIR:" $MIRRORDIR/debian-ubuntu.mirror.list
echo "Apt-mirror ..."
apt-mirror $MIRRORDIR/debian-ubuntu.mirror.list
