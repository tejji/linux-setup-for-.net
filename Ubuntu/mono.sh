apt-get update -y
apt-get upgrade -y 
apt-get install autoconf automake libtool g++ gettext mono-gmcs git apache2-threaded-dev make libx11-dev libexif-dev libjpeg-dev libpng-dev libtiff-def -y
# may be above 2 lines are optional
# apt-get install build-essential bison flex gtk-sharp2-gapi boo gdb valac libfontconfig1-dev libcairo2-dev libpango1.0-dev libfreetype6-dev libexif-dev libtiff4-dev libgif-dev zlib1g-dev libatk1.0-dev libjpeg8-dev libjpeg-turbo8-dev libglib2.0-dev libgtk2.0-dev libglade2-dev libart-2.0-dev libgnomevfs2-dev libgnome-desktop-dev libgnome2-dev libgnomecanvas2-dev libgnomeui-dev libgnomeprint2.2-dev libgnomeprintui2.2-dev libpanel-applet-4-dev libnautilus-extension-dev librsvg2-dev libgtkhtml3.14-dev libgtksourceview2.0-dev libgtksourceview2.0-dev libvte-dev libwnck-dev libnspr4-dev libnss3-dev libwebkit-dev 

# apt-get install build-essential autoconf automake bison flex gtk-sharp2-gapi boo gdb valac libfontconfig1-dev libcairo2-dev libpango1.0-dev libfreetype6-dev libexif-dev libtiff4-dev libgif-dev zlib1g-dev libatk1.0-dev libjpeg8-dev libjpeg-turbo8-dev libglib2.0-dev libgtk2.0-dev libglade2-dev libart-2.0-dev libgnomevfs2-dev libgnome-desktop-dev libgnome2-dev libgnomecanvas2-dev libgnomeui-dev libgnomeprint2.2-dev libgnomeprintui2.2-dev libpanel-applet-4-dev libnautilus-extension-dev librsvg2-dev libgtkhtml3.14-dev libgtksourceview2.0-dev libgtksourceview2.0-dev libvte-dev libwnck-dev libnspr4-dev libnss3-dev libwebkit-dev libvala-0.18-dev

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

# vim /etc/apache2/apache2.conf
# Add Include /etc/apache2/mod_mono.conf at the end of the file (without quotes!)

# vim /etc/apache2/mod_mono.conf
# Add MonoServerPath /usr/bin/mod-mono-server4 (without quotes!) under the "If Modules condition"
# OR
# Paste it into below location else ignore this and follow from next line

# http://go-mono.com/config-mod-mono/Default.aspx >> VirtualHost >> fill form >> Preview >> copy from MonoServerPath and paste it into 
# should include following
# Alias /site.name "/var/zpanel/hostdata/zadmin/public_html/site_name"
# MonoServerPath site.name "/usr/bin/mod-mono-server4"
# MonoDebug site.name true
# MonoSetEnv site.name MONO_IOMAP=all
# MonoApplications site.name "/:/var/zpanel/hostdata/zadmin/public_html/site_name" # <-- ENSURE THAT LOCATION IS / INSTEAD OF /site.name
#  <Location "/"> # <-- ENSURE THAT LOCATION IS / INSTEAD OF /site.name
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


# zpanel > Admin > Module Admin > Apache Config > Select Host & Paste it into custom entry
# OR
# Use below mentioned method (Preferred)
# vi /etc/zpanel/configs/apache/httpd-vhosts.conf
# Paste it into the VirtualHost
# /etc/init.d/apache2 restart

# In Visual Studio set Copy Local = true for following dlls
# System.Web.Helpers.dll
# System.Web.Mvc.dll
# System.Web.Razor.dll
# System.Web.Routing.dll
# System.Web.WebPages.Deployment.dll
# System.Web.WebPages.dll
# System.Web.WebPages.Razor.dll





# credits http://mono.1490590.n4.nabble.com/Installation-procedure-of-Mono-3-0-on-Ubuntu-12-04-td4657323.html
