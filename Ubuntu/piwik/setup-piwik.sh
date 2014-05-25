# MANUAL - login as root
# MANUAL - cd /opt
# MANUAL - mkdir setup
# MANUAL - cd setup

# MANUAL - wget https://raw.githubusercontent.com/tejji/linux-setup-for-.net/master/Ubuntu/zpanel/zpanel-x64.sh
# MANUAL - sudo bash zpanel-x64.sh

# MANUAL - setup the piwik domain manually by logging into zpanel
# MANUAL - change the password of mysql to desired password using zpanel
# MANUAL - change the password of mysql at /etc/zpanel/panel/cnf/db.php
# MANUAL - change the password of mysql at /etc/zpanel/panel/etc/apps/webmail/config/db.inc.php
# MANUAL - change the password of mysql at /etc/zpanel/configs/proftpd/proftpd-mysql.conf

# MANUAL - wget https://raw.githubusercontent.com/tejji/linux-setup-for-.net/master/Ubuntu/piwik/setup-piwik.sh
# MANUAL - sudo bash setup-piwik.sh

apt-get update
apt-get upgrade
apt-get install unzip php5-gd

cd /var/zpanel/hostdata/zadmin/public_html/piwik_tejji_net
wget http://builds.piwik.org/latest.zip
unzip latest.zip

rm *html *zip
#cd piwik
#rm README.md LEAGALNOTICE
#cd misc
#rm How\ to\ install\ Piwik.html gpl-3.0.txt
#cd ..
#cd ..

chown -R www-data:www-data /var/zpanel/hostdata/zadmin/public_html/piwik_tejji_net/
service apache2 restart

# http://<IP-address-OR-domain>/piwik/ - MANUAL - complete rest of the installation here