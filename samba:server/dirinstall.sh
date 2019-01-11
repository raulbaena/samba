#! /bin/bash
# @edt ASIX M06 2018-2019
# instalacio de carpetas
# -------------------------------------
mkdir -p /tmp/home/pere
mkdir -p /tmp/home/anna
mkdir -p /tmp/home/pau
mkdir -p /tmp/home/2wiaw/user09
mkdir -p /tmp/home/2wiaw/user08
mkdir -p /tmp/home/2wiaw/user10
cp /opt/docker/README.md /tmp/home/pere
cp /opt/docker/README.md /tmp/home/anna
cp /opt/docker/README.md /tmp/home/pau
cp /opt/docker/README.md /tmp/home/2wiaw/user09
cp /opt/docker/README.md /tmp/home/2wiaw/user08
cp /opt/docker/README.md /tmp/home/2wiaw/user10
chown -R 5001.10000 /tmp/home/pere
chown -R 5002.10000 /tmp/home/anna
chown -R 5000.10000 /tmp/home/pau
chown -R 11011.10001 /tmp/home/2wiaw/user08
chown -R 11010.10001 /tmp/home/2wiaw/user09
chown -R 11009.10001 /tmp/home/2wiaw/user10
