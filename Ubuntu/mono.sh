apt-get install autoconf automake libtool g++ gettext
apt-get install mono-gmcs
apt-get install git
apt-get install apache2-threaded-dev

cd /opt
mkdir mono-3.2.5
cd /opt/mono-3.2.5

git clone git://github.com/mono/mono.git
git clone git://github.com/mono/xps.git
git clone git://github.com/mono/libgdiplus.git
git clone git://github.com/mono/mod_mono.git

cd /opt/mono-3.2.5/libgdiplus
./autogen.sh --prefix=/usr
make
make install

cd /opt/mono-3.2.5/mono/
make clean
./autogen.sh --prefix=/usr 
make
make install

cd /opt/mono-3.2.5/xsp
./autogen.sh --prefix=/usr
make
make install

cd /opt/mono-3.2.5/mod_mono
./autogen.sh --prefix=/usr
make
make install


### as been added to your apache2 folder(/etc/apache2) ###
# vim /etc/apache2/sites-available/default
# Modify the line "DocumentRoot /var/www" by "DocumentRoot /var/www/YourFolder" (YourFolder is the folder where you publishing your website!)

# vim /etc/apache2/apache2.conf
# Add Include /etc/apache2/mod_mono.conf at the end of the file (without quotes!)

# vim /etc/apache2/mod_mono.conf
# Add MonoServerPath /usr/bin/mod-mono-server4 (without quotes!) under the "If Modules condition"

# /etc/init.d/apache2 restart

# credits http://mono.1490590.n4.nabble.com/Installation-procedure-of-Mono-3-0-on-Ubuntu-12-04-td4657323.html
