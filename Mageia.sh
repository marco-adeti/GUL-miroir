#!/bin/bash

MIRRORDIR="$(dirname $0)/Mageia"
[[ $MIRRORDIR == /* ]] || MIRRORDIR=$(pwd)/$MIRRORDIR

rsync -rlptPH --partial --delete-after --delete-excluded ftp-stud.hs-esslingen.de::Mageia/distrib/4/ $MIRRORDIR/ --exclude SRPMS/ --exclude media/debug/ --filter '-r_.gitignore'
rsync -rlptPvH --partial --delete-after ftp-stud.hs-esslingen.de::Mageia/iso/4/ $MIRRORDIR/../Mageia-iso/ --filter '-r_.gitignore'
