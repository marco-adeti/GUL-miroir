MIRRORDIR="$(dirname $0)/../"

echo "Clean apt-mirror ..."
/bin/sh $MIRRORDIR/var/clean.sh

DESTINATION=$MIRRORDIR/repo/archive.ubuntu.com
SERVEURSOURCE=archive.ubuntu.com

rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/precise/main/installer-i386 $DESTINATION/ubuntu/dists/precise/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/precise/main/installer-amd64 $DESTINATION/ubuntu/dists/precise/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/precise/main/dist-upgrader-all/ $DESTINATION/ubuntu/dists/trusty/main/dist-upgrader-all/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/saucy/main/installer-i386 $DESTINATION/ubuntu/dists/saucy/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/saucy/main/installer-amd64 $DESTINATION/ubuntu/dists/saucy/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/saucy/main/dist-upgrader-all/ $DESTINATION/ubuntu/dists/trusty/main/dist-upgrader-all/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/trusty/main/installer-i386 $DESTINATION/ubuntu/dists/trusty/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/trusty/main/installer-amd64 $DESTINATION/ubuntu/dists/trusty/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/dists/trusty/main/dist-upgrader-all/ $DESTINATION/ubuntu/dists/trusty/main/dist-upgrader-all/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/ubuntu/project $DESTINATION/ubuntu/

DESTINATION=$MIRRORDIR/repo/ftp.fr.debian.org
SERVEURSOURCE=ftp.fr.debian.org

rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/debian/dists/wheezy/main/installer-i386 $DESTINATION/debian/dists/wheezy/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/debian/dists/wheezy/main/installer-amd64 $DESTINATION/debian/dists/wheezy/main/
rsync -a --stats --progress --delete rsync://$SERVEURSOURCE/debian/project $DESTINATION/debian/
##rsync -av --progress --delete --delete-excluded --exclude edgy/ --exclude *6.10* rsync://fr.$SERVEURSOURCE/ubuntu-cd $DESTINATION/ubuntu-cd
#


