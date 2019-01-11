# PAM
## @edt ASIX M06-ASO Curs 2018-2019

raulbaena/hostpam:sshd --> Host per conectarnos al servidor samba i amb connexió al servidor ldap

docker run --privileged --rm -h host --name host --network sambanet -it hostpam:samba
