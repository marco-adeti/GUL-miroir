#!/bin/sh

rsync -rlptPH --partial --delete-after --delete-excluded ftp-stud.hs-esslingen.de::Mageia/distrib/4/ Mageia/ --exclude SRPMS/ --exclude media/debug/ --filter '-r_.gitignore'
rsync -rlptPvH --partial --delete-after ftp-stud.hs-esslingen.de::Mageia/iso/4/ Mageia-iso/ --filter '-r_.gitignore'
