#! /bin/bash
# @edt ASIX M06 2018-2019
# startup.sh
# -------------------------------------

/opt/docker/install.sh && echo "Install Ok"
/usr/sbin/nslcd && echo "nslcd Ok"
/usr/sbin/nscd && echo "nscd Ok"
/usr/sbin/smb && echo "sabmab"
/usr/sbin/nmb && echo "sabmab"
bash /opt/docker/samba_users.sh
/bin/bash
