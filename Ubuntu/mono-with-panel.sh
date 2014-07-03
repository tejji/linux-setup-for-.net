apt-get update -y
apt-get upgrade -y 

# install Ajenti - http://support.ajenti.org/topic/349868-installing-on-ubuntu/
wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh

# install Ajenti V - http://support.ajenti.org/topic/353398-installing-ajenti-v-on-debian/
apt-get remove apache2
apt-get install ajenti-v ajenti-v-nginx ajenti-v-mysql ajenti-v-php-fpm php5-mysql -y
service ajenti restart

# install mono
apt-get install autoconf automake libtool g++ gettext libglib2.0-dev libpng12-dev libfontconfig1-dev -y
apt-get install mono-gmcs -y
apt-get install git -y
apt-get install apache2-threaded-dev -y
apt-get install make libx11-dev -y
apt-get install libexif-dev libjpeg-dev libpng-dev libtiff-def -y
apt-get install libfreetype6-dev libfontconfig1-dev -y

sudo apt-get install build-essential autoconf automake \
bison flex gtk-sharp2-gapi boo gdb valac libfontconfig1-dev \
libcairo2-dev libpango1.0-dev libfreetype6-dev libexif-dev \
libtiff4-dev libgif-dev zlib1g-dev libatk1.0-dev libjpeg8-dev \
libjpeg-turbo8-dev libglib2.0-dev libgtk2.0-dev libglade2-dev \
libart-2.0-dev libgnomevfs2-dev libgnome-desktop-dev \
libgnome2-dev libgnomecanvas2-dev libgnomeui-dev libgnomeprint2.2-dev \
libgnomeprintui2.2-dev libpanel-applet-4-dev \
libnautilus-extension-dev librsvg2-dev libgtkhtml3.14-dev \
libgtksourceview2.0-dev libgtksourceview2.0-dev libvte-dev \
libwnck-dev libnspr4-dev libnss3-dev libwebkit-dev libvala-0.18-dev -y

apt-get update -y
apt-get upgrade -y 

PREFIX=/usr
export PATH=$PREFIX/bin:$PATH
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH

# compile latest mono & install
cd /opt
mkdir mono-3.x
cd /opt/mono-3.x

git clone git://github.com/mono/mono.git
git clone git://github.com/mono/xsp.git
git clone git://github.com/mono/libgdiplus.git
git clone git://github.com/mono/mod_mono.git

cd /opt/mono-3.x/libgdiplus
./autogen.sh --prefix=$PREFIX
make
make install

cd /opt/mono-3.x/mono/
make clean
./autogen.sh --prefix=$PREFIX
make
make install

cd /opt/mono-3.x/xsp
./autogen.sh --prefix=$PREFIX
make
make install

cd /opt/mono-3.x/mod_mono
./autogen.sh --prefix=$PREFIX
make
make install

# enable https urls for webclient. Use it  to download and install all Mozilla's root certificates
sudo mozroots --import --ask-remove --machine
sudo certmgr -ssl -m https://ak.quantcast.com/quantcast-top-million.zip

# Ajenti add website https://ip-address:8000 >> Web >> Websites >> General >>  Create >> Create Directory >> Set >> Domains >> Add >> General Uncheck Maintenance Mode >> Apply Changes >> Back >> Restart Website

# setup up ASP MVC site
# remove mono source code
# remove package files
















# install zpanel - http://docs.zpanelcp.com/?node=22
# bash <(curl -LSs https://raw.github.com/zpanel/installers/master/install/Ubuntu-12_04/10_1_1.sh)


# install mono
# apt-get install mono-complete -t experimental

# apt-get install mono-complete -y
# apt-get install libapache2-mod-mono mono-apache-server2 -y
# sudo apt-get install libapache2-mod-mono mono-apache-server4 -y
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
