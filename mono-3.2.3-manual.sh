yum install bison gettext glib2 freetype fontconfig-devel libpng libpng-devel libX11 libX11-devel glib2-devel libgdi* libexif-devel glibc-devel urw-fonts java unzip gcc gcc-c++ automake autoconf libtool make bzip2 wget libungif-devel freetype-devel libtiff-devel libjpeg-devel xulrunner-devel perl-TimeDate.noarch

cd /root
mkdir setup
cd setup

wget http:/dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -Uvh epel-release-6*.rpm

wget http://download.mono-project.com/sources/mono/mono-3.2.3.tar.bz2
wget http://origin-download.mono-project.com/sources/xsp/xsp-2.10.2.tar.bz2
wget http://origin-download.mono-project.com/sources/libgdiplus/libgdiplus-2.10.9.tar.bz2
wget http://origin-download.mono-project.com/sources/mod_mono/mod_mono-2.10.tar.bz2

tar xjf mono-3.2.3.tar.bz2
tar xjf xsp-2.10.2.tar.bz2
tar xjf libgdiplus-2.10.9.tar.bz2
tar xjf mod_mono-2.10.tar.bz2

chown root:root mono-3.2.3
cd mono-3.2.3
chown -R root:root *
./configure --prefix=/opt/mono-3.2.3

perl -pi -e 's/HAVE_LOCALCHARSET_H 1/HAVE_LOCALCHARSET_H 0/' eglib/config.h
make get-monolite-latest
make -j 8 (may take a while)
make install

echo export PKG_CONFIG_PATH=/usr/lib/pkgconfig:$PKG_CONFIG_PATH>>~/.bash_profile
echo export PATH=/usr/bin:$PATH>>~/.bash_profile
source ~/.bash_profile

chown root:root ../xsp-2.10.2
cd ../xsp-2.10.2
chown -R root:root *
./configure --prefix=/opt/mono-3.2.3
export PKG_CONFIG_PATH=`whereis pkgconfig | awk '{print $2}'`
make
make install

chown root:root ../libgdiplus-2.10.9
cd ../libgdiplus-2.10.9
chown -R root:root *
./configure --prefix=/opt/mono-3.2.3
make
make install

chown root:root ../mod_mono-2.10
cd ../mod_mono-2.10
chown -R root:root *
./configure --prefix=/opt/mono-3.2.3

make
make install
ldconfig

service httpd restart