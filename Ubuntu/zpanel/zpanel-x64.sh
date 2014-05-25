#!/bin/bash -e
# login as root

cd /opt
mkdir setup
cd setup

apt-get install curl
sudo bash <(curl -Ss https://raw.github.com/zpanel/installers/master/install/Ubuntu-12_04/10_1_1.sh)

#wget https://raw.github.com/zpanel/installers/master/install/Ubuntu-12_04/10_1_1.sh
#chmod +x 10_1_1.sh
#./installer-10-1-0-ubuntu-64.sh.x

#setso --set server_ip 162.248.9.179


# http://www.zvps.co.uk/zpanelcp/ubuntu-12-04