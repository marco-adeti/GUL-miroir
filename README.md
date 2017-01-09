GUL-miroir
===========

Scripts pour créer un miroir pour une install-party.

on suppose ici que le chemin de base est __"/mnt/miroir"__

# Installation
Après avoir récupéré le dépot ou décompressé l'archive ...

## Mise à jour du dépôt de fichiers

  Exécuter le script de votre choix 
>  cdimages.sh  debian-ubuntu.sh  fedora.sh  Mageia.sh  opensuse.sh

    28G     cdimages
    505G    debian-ubuntu
    20G     fedora
    66G     Mageia
    16G     Mageia-iso
    198G    opensuse


## Configuration du serveur apache2 pour debian

  Les fichiers se trouvent dans le dossier htconf
>  !! ne pas oublier de substituer la base du chemin 

## Configuration du tftpd-hpa :

  Editer le fichier /etc/default/tftpd-hpa pour adapter le chemain de base.

  TFTP_DIRECTORY="/mnt/mirror/tftp"


# TODO :

- Script déploiement apache2-debian
- Script déploiement tftpd-hpa
- Script de déploiement des installateurs netboot
- conf pxe et dns via dnsmasq

# Debmirror signature error

apt-get install ubuntu-archive-keyring debian-archive-keyring
gpg --keyring /usr/share/keyrings/debian-archive-keyring.gpg --export | gpg --no-default-keyring --keyring /srv/miroir/trustedkeys.gpg --import
gpg --keyring /usr/share/keyrings/ubuntu-archive-keyring.gpg --export | gpg --no-default-keyring --keyring /srv/miroir/trustedkeys.gpg --import
gpg --keyserver pgpkeys.mit.edu --recv-key 65558117
gpg -a --export 65558117 | gpg --no-default-keyring --keyring /srv/miroir/trustedkeys.gpg --import
