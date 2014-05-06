#!/bin/bash -e
# login as root

cd
mkdir setup
cd setup

wget http://www.zvps.co.uk/downloads/ubuntu/10-1-0/installer-10-1-0-ubuntu-64.sh.x.tar.gz
tar -xf installer-10-1-0-ubuntu-64.sh.x.tar.gz
chmod +x installer-10-1-0-ubuntu-64.sh.x
apt-get install curl
./installer-10-1-0-ubuntu-64.sh.x

setso --set server_ip 162.248.166.82


# http://www.zvps.co.uk/zpanelcp/ubuntu-12-04
