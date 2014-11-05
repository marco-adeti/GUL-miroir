#!/bin/bash

MIRRORDIR="$(dirname $0)/fedora"
[[ $MIRRORDIR == /* ]] || MIRRORDIR=$(pwd)/$MIRRORDIR

rsync -rlptPvH --partial --delete-after --delete-excluded  ftp-stud.hs-esslingen.de::fedora/linux/releases/20/Fedora/ $MIRRORDIR/ --exclude source/ --filter '-r_.gitignore' 
