apt-get update
apt-get upgrade -y
apt-get install autoconf automake libtool g++ gettext
apt-get install mono-gmcs
apt-get install git
apt-get install apache2-threaded-dev
apt-get install make 
apt-get install libx11-dev
apt-get install libexif-dev libjpeg-dev libpng-dev libtiff-def

# sudo apt-get install build-essential autoconf automake \
# bison flex gtk-sharp2-gapi boo gdb valac libfontconfig1-dev \
# libcairo2-dev libpango1.0-dev libfreetype6-dev libexif-dev \
# libtiff4-dev libgif-dev zlib1g-dev libatk1.0-dev libjpeg8-dev \
# libjpeg-turbo8-dev libglib2.0-dev libgtk2.0-dev libglade2-dev \
# libart-2.0-dev libgnomevfs2-dev libgnome-desktop-dev \
# libgnome2-dev libgnomecanvas2-dev libgnomeui-dev libgnomeprint2.2-dev \
# libgnomeprintui2.2-dev libpanel-applet-4-dev \
# libnautilus-extension-dev librsvg2-dev libgtkhtml3.14-dev \
# libgtksourceview2.0-dev libgtksourceview2.0-dev libvte-dev \
# libwnck-dev libnspr4-dev libnss3-dev libwebkit-dev libvala-0.18-dev

# sudo apt-get install -y build-essential libc6-dev g++ gcc libglib2.0-dev pkg-config git-core apache2 apache2-threaded-dev bison gettext autoconf automake libtool libpango1.0-dev libatk1.0-dev libgtk2.0-dev libtiff4-dev libgif-dev libglade2-dev curl
# http://stackoverflow.com/questions/13365158/installing-mono-3-x-3-0-x-and-or-3-2-x


PREFIX=/usr
export PATH=$PREFIX/bin:$PATH
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH


#echo export PKG_CONFIG_PATH=/usr/lib/pkgconfig:$PKG_CONFIG_PATH>>~/.bash_profile
#echo export PATH=/usr/bin:$PATH>>~/.bash_profile
#source ~/.bash_profile

cd /opt
mkdir mono-3.2.5
cd /opt/mono-3.2.5

git clone git://github.com/mono/mono.git
git clone git://github.com/mono/xsp.git
git clone git://github.com/mono/libgdiplus.git
git clone git://github.com/mono/mod_mono.git

cd /opt/mono-3.2.5/libgdiplus
./autogen.sh --prefix=$PREFIX
make
make install

cd /opt/mono-3.2.5/mono/
make clean
./autogen.sh --prefix=$PREFIX
make
make install

cd /opt/mono-3.2.5/xsp
./autogen.sh --prefix=$PREFIX
make
make install

cd /opt/mono-3.2.5/mod_mono
./autogen.sh --prefix=$PREFIX
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
