GUL-miroir
===========

Scripts pour créer un miroir pour une install-party.

on suppose ici que le chemin de base est __"/mnt/mirroir"__

Après avoir récupéré le dépot ou décompresser l'archive ...

1. Mise à jour du dépôt de fichiers : 

Exécuter le script de votre choix 
>  cdimages.sh  debian-ubuntu.sh  fedora.sh  Mageia.sh  opensuse.sh

2. Configuration du serveur apache2 pour debian

  Les fichiers se trouvent dans le dossier htconf
>  !! ne pas oublier de substituer la base du chemin 

3. Configuration du tftpd-hpa :

  Editer le fichier /etc/default/tftpd-hpa pour adapter le chemain de base.
>  TFTP_DIRECTORY="/mnt/mirror/tftp"


# TODO :

- Script déploiement apache2-debian
- Script déploiement tftpd-hpa
- Script de déploiement des installateurs netboot
- conf pxe et dns via dnsmasq
