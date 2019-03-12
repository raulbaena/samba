# PAM

## @edt ASIX M06-ASO Curs 2018-2019


## Fitxers de configuració
Coguracio de l'arxiu smb.conf
```
[global]
        workgroup = SAMBA
        security = user

        passdb backend = tdbsam

        printing = cups
        printcap name = cups
        load printers = yes
        cups options = raw

[homes]
        comment = Home Directories
        valid users = %S, %D%w%S
        browseable = No
        read only = No
        inherit acls = Yes
```

Configuracio de l'arxiu ldap.conf
```
BASE	dc=edt,dc=org
URI	ldap://ldap
```

Configuracio del arxiu nslcd.conf
```
uid nslcd
gid ldap
uri ldap://ldap
base dc=edt,dc=org
```
Configuracio el fitxer nsswitch.con
```
passwd:    files ldap
shadow:    files 
group:     files ldap
```
# Execució de la imatge 

docker run --privileged --rm --name smb -h smb --network sambanet -it raulbaena/sambahomes:server


#By Raul Baena Nocea
