echo "deb http://ftp.debian.org/debian experimental main" >> /etc/apt/sources.list

apt-get update -y
apt-get upgrade -y 

# install Ajenti - http://support.ajenti.org/topic/349868-installing-on-ubuntu/
# wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh

# install Ajenti V - http://support.ajenti.org/topic/353398-installing-ajenti-v-on-debian/
# apt-get remove apache2
# apt-get install ajenti-v ajenti-v-nginx ajenti-v-mysql ajenti-v-php-fpm php5-mysql -y
# service ajenti restart

# install zpanel - http://docs.zpanelcp.com/?node=22
bash <(curl -LSs https://raw.github.com/zpanel/installers/master/install/Ubuntu-12_04/10_1_1.sh)


# install mono
apt-get install mono-complete -t experimental

# apt-get install mono-complete -y
# apt-get install libapache2-mod-mono mono-apache-server2 -y
sudo apt-get install libapache2-mod-mono mono-apache-server4 -y
# apt-get install mono-fastcgi-server4 -y

# Instructions
# vim /etc/apache2/apache2.conf
# Add Include /etc/apache2/mods-enabled/mod_mono.conf at the end of the file (without quotes!)

# http://go-mono.com/config-mod-mono/Default.aspx >> VirtualHost >> fill form >> Preview >> copy from MonoServerPath and paste it into 
# should include following
# Alias /site.name "/var/zpanel/hostdata/zadmin/public_html/site_name"
# MonoServerPath site.name "/usr/bin/mod-mono-server4"
# MonoDebug site.name true
# MonoSetEnv site.name MONO_IOMAP=all
# MonoApplications site.name "/:/var/zpanel/hostdata/zadmin/public_html/site_name" # <-- ENSURE THAT LOCATION IS  /site_name
#  <Location "/"> # <-- ENSURE THAT LOCATION IS / INSTEAD OF /site_name
#    Allow from all
#    Order allow,deny
#    MonoSetServerAlias site.name
#    SetHandler mono
#    SetOutputFilter DEFLATE
#    SetEnvIfNoCase Request_URI "\.(?:gif|jpe?g|png)$" no-gzip dont-vary
#  </Location>
#  <IfModule mod_deflate.c>
#    AddOutputFilterByType DEFLATE text/html text/plain text/xml text/javascript
#  </IfModule>

# sudo service apache2 restart
