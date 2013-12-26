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


# using latest verion of xsp from github https://github.com/mono/xsp/releases. This works for targetFramework=4.5
cd /root/setup
wget https://github.com/mono/xsp/archive/3.0.11.tar.gz
cp 3.0.11 3.0.11.tar.gz
rm -f -r 3.0.11
tar xvzf 3.0.11.tar.gz
chown root:root xsp-3.0.11
cd xsp-3.0.11
chown -R root:root *
./autogen.sh
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
./configure --prefix=/usr
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

# vi /etc/httpd/conf/mod_mono.conf 
## go to end of file and add following line 
# MonoServerPath "/usr/bin/mod-mono-server4"

## may have to edit "/usr/bin/xsp4" as exec /usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/4.5/xsp4.exe" "$@"
# cp /usr/lib/mono/4.0/xsp4.exe /usr/lib/mono/4.5/
## may have to edit /usr/bin/mod-mono-server4  as exec /usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/4.5/mod-mono-server4.exe" "$@"
# cp /usr/lib/mono/4.0/mod-mono-server4.exe /usr/lib/mono/4.5/




#service httpd restart
