wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -Uvh epel-release-6*.rpm

yum -y install make gcc-c++ gettext glib2-devel libpng-devel libexif-devel libX11-devel fontconfig-devel

cd /root/setup
wget http://download.mono-project.com/sources/mono/mono-3.2.3.tar.bz2
tar -xvjpf mono-3.2.3.tar.bz2
chown root:root mono-3.2.3
cd mono-3.2.3
chown -R root:root *
./configure --prefix=/usr
make
make install

echo export PKG_CONFIG_PATH=/usr/lib/pkgconfig:$PKG_CONFIG_PATH>>~/.bash_profile
echo export PATH=/usr/bin:$PATH>>~/.bash_profile
source ~/.bash_profile

cd /root/setup
wget http://origin-download.mono-project.com/sources/xsp/xsp-2.10.2.tar.bz2
tar xjf xsp-2.10.2.tar.bz2
chown root:root xsp-2.10.2
cd xsp-2.10.2
chown -R root:root *
./configure --prefix=/usr
export PKG_CONFIG_PATH=`whereis pkgconfig | awk '{print $2}'`
make
make install

cd /root/setup
wget http://origin-download.mono-project.com/sources/libgdiplus/libgdiplus-2.10.9.tar.bz2
tar xjf libgdiplus-2.10.9.tar.bz2
chown root:root libgdiplus-2.10.9
cd libgdiplus-2.10.9
chown -R root:root *
./configure --prefix=/usr
make
make install

cd /root/setup
wget http://origin-download.mono-project.com/sources/mod_mono/mod_mono-2.10.tar.bz2
tar xjf mod_mono-2.10.tar.bz2
chown root:root mod_mono-2.10
cd mod_mono-2.10
chown -R root:root *
./configure --prefix=/usr
make
make install
ldconfig

#service httpd restart
