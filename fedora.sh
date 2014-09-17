#!/bin/sh

rsync -rlptPvH --partial --delete-after --delete-excluded  ftp-stud.hs-esslingen.de::fedora/linux/releases/20/Fedora/ fedora/ --exclude source/
