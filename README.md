# SAMBA SERVER

# RAUL BAENA NOCEA EDT ASIX 2018-2019

# Arquitectura

sambanet --> Una xarxa propia per als containers implicats.

sambahomes:server --> Servidor SAMBA pero montar homes 

sambahomes:ldap --> Un servidor ldap en funcionament amb els usuaris de xarxa.

sambahomes:host --> Host amb connexío al servidor ldap. Utilitzarem aquest host per conectarnos al samba

## Descarregar les imatges

docker pull raulbaena/sambahomes:host

docker pull raulbaena/sambahomes:server

docker pull raulbaena/sambahomes:ldap

## Execució de les maquines

docker network create sambanet

docker run --rm --network sambanet -h ldap --name ldap -p 389:389 -d raulbaena/sambahomes:ldap

docker run --privileged --rm --name smb -h smb --network sambanet -it raulbaena/sambahomes:server

docker run --privileged --rm -h host --name host --network sambanet -it raulbaena/sambahomes:host


#Exemple del funcionament
```
[root@host docker]# su - marta
Creating directory '/tmp/home/marta'.
reenter password for pam_mount:
id: cannot find name for group ID 600
[marta@host ~]$ mount -t cifs

//172.19.0.3/marta on /tmp/home/marta/marta type cifs (rw,relatime,vers=default,cache=strict,username=marta,domain=,uid=5003,forceuid,gid=600,forcegid,addr=172.19.0.3,file_mode=0755,dir_mode=0755,soft,nounix,serverino,mapposix,rsize=1048576,wsize=1048576,echo_interval=60,actimeo=1)
```
```
[root@host docker]# su - user10
Creating directory '/tmp/home/2asix/user10'.
reenter password for pam_mount:
id: cannot find name for group ID 611
[user10@host ~]$ mount -t cifs
//172.19.0.3/user10 on /tmp/home/2asix/user10/user10 type cifs (rw,relatime,vers=default,cache=strict,username=user10,domain=,uid=7010,forceuid,gid=611,forcegid,addr=172.19.0.3,file_mode=0755,dir_mode=0755,soft,nounix,serverino,mapposix,rsize=1048576,wsize=1048576,echo_interval=60,actimeo=1)
```
