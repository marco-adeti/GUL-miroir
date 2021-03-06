#!/bin/bash

MIRRORDIR="$(dirname $0)/debian-ubuntu"
[[ $MIRRORDIR == /* ]] || MIRRORDIR=$(pwd)/$MIRRORDIR

#sed -i "s:^set base_path.*$:set base_path\t$MIRRORDIR:" $MIRRORDIR/debian-ubuntu.mirror.list
#echo "Apt-mirror ..."
#apt-mirror $MIRRORDIR/debian-ubuntu.mirror.list

false ; while [ $? != 0 ] ; do debmirror --keyring=${MIRRORDIR}/../trustedkeys.gpg --method=rsync --root=ubuntu --dist=bionic,bionic-updates,bionic-security,bionic-backports,bionic-proposed,xenial,xenial-updates,xenial-security,xenial-backports,xenial-proposed --host=archive.ubuntu.com --section=main,main/debian-installer,restricted,universe,multiverse --arch=i386,amd64 ${MIRRORDIR}/repo/archive.ubuntu.com/ubuntu/ --getcontents --ignore-release-gpg --progress --i18n --rsync-extra=doc,indices,tools,trace --di-dist=bionic,bionic-updates,bionic-proposed,xenial,xenial-updates,xenial-proposed --di-arch=i386,amd64 --allow-dist-rename --diff=mirror --slow-cpu; done

debmirror --keyring=${MIRRORDIR}/../trustedkeys.gpg --method=http --root=/ --dist=bionic,bionic-proposed,xenial,xenial-proposed --host=archive.canonical.com --section=partner --arch=i386,amd64 ${MIRRORDIR}/repo/archive.canonical.com/ --getcontents --ignore-release-gpg --progress --i18n --rsync-extra=none --allow-dist-rename --diff=mirror --slow-cpu     


false ; while [ $? != 0 ] ; do debmirror --keyring=${MIRRORDIR}/../trustedkeys.gpg --method=rsync --root=debian --dist=stable,stable-updates,stretch-backports,jessie-backports,oldstable,oldstable-updates,testing,testing-updates --host=ftp.fr.debian.org --section=main,main/debian-installer,contrib,non-free --arch=i386,amd64 ${MIRRORDIR}/repo/ftp.fr.debian.org/debian/ --getcontents --ignore-release-gpg --progress --i18n --rsync-extra=doc,indices,tools,trace --di-dist=stable,testing --di-arch=i386,amd64 --allow-dist-rename --diff=mirror --slow-cpu; done                                                  

debmirror --keyring=${MIRRORDIR}/../trustedkeys.gpg --method=rsync --root=debian-security --dist=stable/updates,oldstable/updates,testing/updates --host=security.debian.org --section=main,main/debian-installer,contrib,non-free --arch=i386,amd64 ${MIRRORDIR}/repo/security.debian.org/ --getcontents --ignore-release-gpg --progress --i18n --rsync-extra=doc,indices,tools,trace --allow-dist-rename --diff=mirror --slow-cpu

debmirror --keyring=${MIRRORDIR}/../trustedkeys.gpg --method=rsync --root=deb --dist=stable,stable-backports,oldstable,oldstable-backports,testing --host=www.deb-multimedia.org --section=main,non-free --arch=i386,amd64 ${MIRRORDIR}/repo/www.deb-multimedia.org/ --getcontents --ignore-release-gpg --progress --i18n --rsync-extra=doc,indices,tools,trace --allow-dist-rename --diff=mirror --slow-cpu                            
                                                                                                                                                                                               

#deb http://download.videolan.org/pub/debian/stable/ /
#deb http://download.videolan.org/pub/debian/testing/ /
#debmirror --keyring=${MIRRORDIR}/../trustedkeys.gpg --method=http --root=debian --dist=stable,testing --host=download.videolan.org --section=/ --arch=i386,amd64 ${MIRRORDIR}/repo/download.videolan.org/debian --getcontents --ignore-release-gpg --progress --i18n --rsync-extra=none --allow-dist-rename --diff=mirror


