#!/bin/bash -e
# login as root
# wget https://raw.githubusercontent.com/tejji/linux-setup-for-.net/master/Ubuntu/zpanel/zpanel-x64.sh
# sudo bash zpanel-x64.sh

cd /opt
mkdir setup
cd setup

apt-get install curl

wget https://raw.github.com/zpanel/installers/master/install/Ubuntu-12_04/10_1_1.sh
chmod +x 10_1_1.sh
./10_1_1.sh

#setso --set server_ip 162.248.9.179


# http://www.zvps.co.uk/zpanelcp/ubuntu-12-04