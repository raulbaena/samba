#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
#  - crear usuaris locals
# -------------------------------------
useradd -g users  anna
useradd -g users  pere
useradd -g users  pau

echo "pau" | passwd --stdin pau
echo "anna" | passwd --stdin anna
echo "pere" | passwd --stdin pere

(echo "smbpau";echo "smbpau") | smbpasswd -a pau
(echo "smbanna";echo "smbanna") | smbpasswd -a anna
(echo "smbpere";echo "smbpere") | smbpasswd -a pere

cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth  /etc/pam.d/system-auth
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
cp /opt/docker/smb.conf /etc/samba/smb.conf

