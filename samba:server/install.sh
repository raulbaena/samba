#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
#  - samba
# -------------------------------------

cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
cp /opt/docker/system-auth /etc/pam.d/system-auth
cp /opt/docker/smb.conf /etc/samba/smb.conf

