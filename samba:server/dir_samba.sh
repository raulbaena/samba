#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
#  - samba
# -------------------------------------

mkdir -p /tmp/home/pere
mkdir -p /tmp/home/pau
mkdir -p /tmp/home/marta
mkdir -p /tmp/home/2asix/user10
mkdir -p /tmp/home/2asix/vladimir

cp /opt/docker/README.md /tmp/home/pere/README.md
cp /opt/docker/README.md /tmp/home/marta/README.md
cp /opt/docker/README.md /tmp/home/pau/README.md
cp /opt/docker/README.md /tmp/home/2asix/vladimir/README.me

chown -R 5001.100 /tmp/home/pere
chown -R 5000.100 /tmp/home/pau
chown -R 5003.100 /tmp/home/marta
chown -R 5003.100 /tmp/home/2asix/vladimir

