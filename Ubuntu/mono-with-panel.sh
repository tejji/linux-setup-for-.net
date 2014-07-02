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
apt-get install mono-complete -y
apt-get install libapache2-mod-mono mono-apache-server2 -y
# apt-get install mono-fastcgi-server4 -y

