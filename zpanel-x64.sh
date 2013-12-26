#!/bin/bash -e

cd
mkdir setup
cd setup

wget http://www.zvps.co.uk/downloads/centos/10-1-0/installer-10-1-0-centos-64.sh.x.tar.gz
tar -xf installer-10-1-0-centos-64.sh.x.tar.gz
chmod +x installer-10-1-0-centos-64.sh.x
yum install ld-linux.so.2 curl
./installer-10-1-0-centos-64.sh.x

setso --set server_ip 162.248.9.179