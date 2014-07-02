# install Ajenti - http://support.ajenti.org/topic/349868-installing-on-ubuntu/
wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh

# install Ajenti V - http://support.ajenti.org/topic/353398-installing-ajenti-v-on-debian/
apt-get remove apache2
apt-get install ajenti-v ajenti-v-nginx ajenti-v-mysql ajenti-v-php-fpm php5-mysql -y
service ajenti restart

# install mono
apt-get install mono-complete -y
apt-get install mono-fastcgi-server4 -y

