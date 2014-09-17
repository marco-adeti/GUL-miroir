#!/bin/bash 

CDSTORE=cdimages
[ -d $CDSTORE ] || exit 1
 
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/amd64/iso-cd/debian-7.4.0-amd64-CD-1.iso $CDSTORE/debian-7.4.0-amd64-CD-1.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/amd64/iso-cd/debian-7.4.0-amd64-netinst.iso $CDSTORE/debian-7.4.0-amd64-netinst.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/amd64/iso-cd/debian-7.4.0-amd64-kde-CD-1.iso $CDSTORE/debian-7.4.0-amd64-kde-CD-1.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/amd64/iso-cd/debian-7.4.0-amd64-lxde-CD-1.iso $CDSTORE/debian-7.4.0-amd64-lxde-CD-1.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/amd64/iso-dvd/debian-7.4.0-amd64-DVD-1.iso $CDSTORE/debian-7.4.0-amd64-DVD-1.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/i386/iso-cd/debian-7.4.0-i386-CD-1.iso $CDSTORE/debian-7.4.0-i386-CD-1.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/i386/iso-cd/debian-7.4.0-i386-netinst.iso $CDSTORE/debian-7.4.0-i386-netinst.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/i386/iso-cd/debian-7.4.0-i386-kde-CD-1.iso $CDSTORE/debian-7.4.0-i386-kde-CD-1.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/i386/iso-cd/debian-7.4.0-i386-lxde-CD-1.iso $CDSTORE/debian-7.4.0-i386-lxde-CD-1.iso
rsync -rpLtPH --no-motd ftp.iut-bm.univ-fcomte.fr::debian-iso/debian-official/current/i386/iso-dvd/debian-7.4.0-i386-DVD-1.iso $CDSTORE/debian-7.4.0-i386-DVD-1.iso

rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/releases/precise/release/ubuntu-12.04.4-dvd-amd64.iso $CDSTORE/ubuntu-12.04.4-dvd-amd64.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/releases/precise/release/ubuntu-12.04.4-dvd-i386.iso $CDSTORE/ubuntu-12.04.4-dvd-i386.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/precise/daily/current/precise-alternate-amd64.iso $CDSTORE/ubuntu-precise-alternate-amd64.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/precise/daily/current/precise-alternate-i386.iso $CDSTORE/ubuntu-precise-alternate-i386.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/precise/daily-live/current/precise-desktop-amd64.iso $CDSTORE/ubuntu-precise-desktop-amd64.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/precise/daily-live/current/precise-desktop-i386.iso $CDSTORE/ubuntu-precise-desktop-i386.iso

rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/lubuntu/releases/precise/release/lubuntu-12.04-alternate-amd64.iso $CDSTORE/lubuntu-12.04-alternate-amd64.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/lubuntu/releases/precise/release/lubuntu-12.04-alternate-i386.iso $CDSTORE/lubuntu-12.04-alternate-i386.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/lubuntu/releases/precise/release/lubuntu-12.04-desktop-amd64.iso $CDSTORE/lubuntu-12.04-desktop-amd64.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/lubuntu/releases/precise/release/lubuntu-12.04-desktop-i386.iso $CDSTORE/lubuntu-12.04-desktop-i386.iso

#rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/kubuntu/precise/daily/current/precise-alternate-amd64.iso $CDSTORE/kubuntu-precise-alternate-amd64.iso
#rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/kubuntu/precise/daily/current/precise-alternate-i386.iso $CDSTORE/kubuntu-precise-alternate-i386.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/kubuntu/releases/precise/release/kubuntu-12.04.4-desktop-i386.iso $CDSTORE/kubuntu-12.04.4-desktop-i386.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/kubuntu/releases/precise/release/kubuntu-12.04.4-desktop-amd64.iso $CDSTORE/kubuntu-12.04.4-desktop-amd64.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/kubuntu/releases/precise/release/kubuntu-12.04-dvd-amd64.iso $CDSTORE/kubuntu-12.04-dvd-amd64.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/kubuntu/releases/precise/release/kubuntu-12.04-dvd-i386.iso $CDSTORE/kubuntu-12.04-dvd-i386.iso

rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/edubuntu/precise/dvd/current/precise-dvd-i386.iso $CDSTORE/edubuntu-precise-dvd-i386.iso
rsync -rpLtPH rsync://cdimage.ubuntu.com/cdimage/edubuntu/precise/dvd/current/precise-dvd-amd64.iso $CDSTORE/edubuntu-precise-dvd-amd64.iso

rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/stable/15/linuxmint-16-cinnamon-dvd-32bit.iso $CDSTORE/linuxmint-16-cinnamon-dvd-32bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/stable/15/linuxmint-16-cinnamon-dvd-64bit.iso $CDSTORE/linuxmint-16-cinnamon-dvd-64bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/stable/15/linuxmint-16-mate-dvd-32bit.iso $CDSTORE/linuxmint-16-mate-dvd-32bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/stable/15/linuxmint-16-mate-dvd-64bit.iso $CDSTORE/linuxmint-16-mate-dvd-64bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/stable/15/linuxmint-16-kde-dvd-32bit.iso $CDSTORE/linuxmint-16-kde-dvd-32bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/stable/15/linuxmint-16-kde-dvd-64bit.iso $CDSTORE/linuxmint-16-kde-dvd-64bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso//stable/15/linuxmint-16-xfce-dvd-32bit.iso $CDSTORE/linuxmint-16-xfce-dvd-32bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso//stable/15/linuxmint-16-xfce-dvd-64bit.iso $CDSTORE/linuxmint-16-xfce-dvd-64bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/debian/linuxmint-201303-cinnamon-dvd-32bit.iso $CDSTORE/linuxmint-201303-cinnamon-dvd-32bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/debian/linuxmint-201303-cinnamon-dvd-64bit.iso $CDSTORE/linuxmint-201303-cinnamon-dvd-64bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/debian/linuxmint-201303-mate-dvd-32bit.iso $CDSTORE/linuxmint-201303-mate-dvd-32bit.iso
rsync -rLptPH mirrors.ircam.fr::pub/linuxmint-iso/debian/linuxmint-201303-mate-dvd-64bit.iso $CDSTORE/linuxmint-201303-mate-dvd-64bit.iso

cd ..
exit 0

lftp http://downloads.raspberrypi.org -e"get -c /raspbian_latest -O $CDSTORE ;quit" &
lftp http://downloads.raspberrypi.org -e"get -c /arch_latest -O $CDSTORE ;quit" &
lftp http://downloads.raspberrypi.org -e"get -c /openelec_latest -O $CDSTORE ;quit" &
lftp http://downloads.raspberrypi.org -e"get -c /pidora_latest -O $CDSTORE ;quit" &
lftp http://downloads.raspberrypi.org -e"get -c /raspbmc_latest -O $CDSTORE ;quit" &
lftp http://downloads.raspberrypi.org -e"get -c /riscos_latest -O $CDSTORE ;quit" &

