# PAM

## @edt ASIX M06-ASO Curs 2018-2019

Fitxers necesaris per la cració del servidor SAMBA

## Fitxers de configuració

Fitxers

Dockerfile

README.md

install.sh

ldap.conf

nslcd.conf

nsswitch.conf

pam_mount.conf.xml

startup.sh

system-auth

dir_samba.sh

usuaris_samba.sh

# Execució de la imatge 

docker run --privileged --rm --name smb -h smb --network sambanet -it samba:server


#By Raul Baena Nocea
