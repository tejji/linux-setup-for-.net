# MANUAL - login as root
# MANUAL - cd /opt
# MANUAL - mkdir setup
# MANUAL - cd setup

# MANUAL - wget https://raw.githubusercontent.com/tejji/linux-setup-for-.net/master/Ubuntu/zpanel/zpanel-x64.sh
# MANUAL - sudo bash zpanel-x64.sh

# MANUAL - setup the piwik domain manually by logging into zpanel
# MANUAL - change the password of mysql to desired password using zpanel
# MANUAL - change the password of mysql at /etc/zpanel/panel/cnf/db.php

apt-get update
apt-get upgrade
apt-get install unzip php5-gd

cd /var/zpanel/hostdata/zadmin/public_html/piwik_tejji_net
wget http://builds.piwik.org/latest.zip
unzip latest.zip
chown -R www-data:www-data /var/zpanel/hostdata/zadmin/public_html/piwik_tejji_net/piwik
service apache2 restart

# http://<IP-address-OR-domain>/piwik/ - MANUAL - complete rest of the installation here