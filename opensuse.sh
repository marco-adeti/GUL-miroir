#!/bin/bash

MIRRORDIR="$(dirname $0)/opensuse"
[[ $MIRRORDIR == /* ]] || MIRRORDIR=$(pwd)/$MIRRORDIR

rsync -rlptH rsync.opensuse.org::opensuse-hotstuff-640gb $MIRRORDIR/ --delete-after -hi --stats --exclude source/ --exclude debug/ --filter '-r_.gitignore'
#rsync -rlptHv rsync://ftp.halifax.rwth-aachen.de/opensuse/ $MIRRORDIR/ --delete-before -hi --stats --exclude source --exclude debug --exclude ports --exclude 'factory*' --exclude '.~tmp~' --exclude '.timestamp_invisible' --exclude '**/11.4' --exclude '**/SLE_11*' --exclude '**/12.1' --exclude '**/12.1-*' --exclude '**/12.2' --exclude '**/12.2-*' --exclude '**/ppc64' --delete-excluded --exclude repositories/ --filter '-r_.gitignore'
