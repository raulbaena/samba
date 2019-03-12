# ldapserver:samba

## @edt ASIX M06-ASO 2018-2019

## Maquina

raulbaena/sambahomes:ldap --> Maquina servidor ldap amb base de dades dc=edt,dc=org

ldapserver 2018-2019 edt.org cn

Comandes per execució

 * **server** docker run --rm --network sambanet -h ldap --name ldap -p 389:389 -d raulbaena/sambahomes:ldap




