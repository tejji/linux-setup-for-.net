apt-get update -y
apt-get upgrade -y 
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

# apt-get install autoconf automake libtool g++ gettext mono-gmcs git apache2-threaded-dev make libx11-dev libexif-dev libjpeg-dev libpng-dev libtiff-def aspell aspell-en aspell-en binfmt-support binfmt-support cli-common cli-common cups-common dconf-gsettings-backend dconf-gsettings-backend dconf-service dictionaries-common dictionaries-common emacsen-common enchant enchant fontconfig fontconfig glib-networking glib-networking glib-networking-common glib-networking-services glib-networking-services gnome-codec-install gsettings-desktop-schemas gsettings-desktop-schemas gstreamer1.0-ffmpeg gstreamer1.0-plugins-bad gstreamer1.0-tools gvfs hicolor-icon-theme hunspell hunspell-en-us hunspell-en-us ispell jed-extra konqueror libasound2 libaspell15 libaspell15 libatk1.0-0 libatk1.0-0 libatk1.0-data libatk1.0-data libavahi-client3 libavahi-common3 libavahi-common3 libavahi-common-data libavahi-common-data libcairo2 libcairo2 libcups2 libcups2 libdatrie1 libdconf1 libdconf1 libdrm-intel1 libdrm-intel1 libdrm-nouveau2 libdrm-nouveau2 libdrm-radeon1 libdrm-radeon1 libenchant1c2a libenchant-voikko libexif12 libexif12 libgail18 libgail18 libgamin0 libgdiplus libgdiplus libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgeoclue0 libgeoclue0 libgif4 libgif4 libgl1-mesa-dri libgl1-mesa-dri libgl1-mesa-glx libgl1-mesa-glx libglade2.0-cil libglade2.0-cil libglade2-0 libglapi-mesa libglapi-mesa libglib2.0-cil libglib2.0-cil libglide3 libgnome2-0 libgraphite2-3 libgraphite2-3 libgstreamer1.0-0 libgstreamer1.0-0 libgstreamer-plugins-base1.0-0 libgtk2.0-0 libgtk2.0-0 libgtk2.0-bin libgtk2.0-bin libgtk2.0-cil libgtk2.0-common libgtk2.0-common libharfbuzz0a libharfbuzz0a libhunspell-1.3-0 libhunspell-1.3-0 libice6 libice6 libicu48 libjasper1 libjasper1 libjasper-runtime libjavascriptcoregtk-1.0-0 libjavascriptcoregtk-1.0-0 libllvm3.3 libllvm3.3 libmono-2.0-1 libmono-2.0-1 libmono2.0-cil libmono2.0-cil libmono-2.0-dev libmono-accessibility2.0-cil libmono-accessibility2.0-cil libmono-accessibility4.0-cil libmono-accessibility4.0-cil libmono-c5-1.1-cil libmono-cairo2.0-cil libmono-cairo2.0-cil libmono-cairo4.0-cil libmono-cairo4.0-cil libmono-cecil-private-cil libmono-cil-dev libmono-cil-dev libmono-codecontracts4.0-cil libmono-codecontracts4.0-cil libmono-compilerservices-symbolwriter4.0-cil libmono-corlib2.0-cil libmono-corlib2.0-cil libmono-corlib4.0-cil libmono-cscompmgd8.0-cil libmono-cscompmgd8.0-cil libmono-csharp4.0-cil libmono-csharp4.0-cil libmono-custommarshalers4.0-cil libmono-data-tds2.0-cil libmono-data-tds2.0-cil libmono-data-tds4.0-cil libmono-db2-1.0-cil libmono-db2-1.0-cil libmono-debugger-soft2.0-cil libmono-debugger-soft2.0-cil libmono-debugger-soft4.0-cil libmono-http4.0-cil libmono-http4.0-cil libmono-i18n2.0-cil libmono-i18n4.0-all libmono-i18n4.0-all libmono-i18n4.0-cil libmono-i18n4.0-cil libmono-i18n-cjk4.0-cil libmono-i18n-cjk4.0-cil libmono-i18n-mideast4.0-cil libmono-i18n-other4.0-cil libmono-i18n-other4.0-cil libmono-i18n-rare4.0-cil libmono-i18n-west2.0-cil libmono-i18n-west2.0-cil libmono-i18n-west4.0-cil libmono-i18n-west4.0-cil libmono-ldap2.0-cil libmono-ldap4.0-cil libmono-ldap4.0-cil libmono-management2.0-cil libmono-management2.0-cil libmono-management4.0-cil libmono-messaging2.0-cil libmono-messaging2.0-cil libmono-messaging4.0-cil libmono-messaging-rabbitmq2.0-cil libmono-messaging-rabbitmq2.0-cil libmono-messaging-rabbitmq4.0-cil libmono-microsoft8.0-cil libmono-microsoft8.0-cil libmono-microsoft-build2.0-cil libmono-microsoft-build-engine4.0-cil libmono-microsoft-build-engine4.0-cil libmono-microsoft-build-framework4.0-cil libmono-microsoft-build-tasks-v4.0-4.0-cil libmono-microsoft-build-utilities-v4.0-4.0-cil libmono-microsoft-csharp4.0-cil libmono-microsoft-csharp4.0-cil libmono-microsoft-visualc10.0-cil libmono-microsoft-web-infrastructure1.0-cil libmono-npgsql2.0-cil libmono-npgsql4.0-cil libmono-npgsql4.0-cil libmono-opensystem-c4.0-cil libmono-opensystem-c4.0-cil libmono-oracle2.0-cil libmono-oracle4.0-cil libmono-oracle4.0-cil libmono-peapi2.0-cil libmono-peapi2.0-cil libmono-peapi4.0-cil libmono-posix2.0-cil libmono-posix2.0-cil libmono-posix4.0-cil libmono-posix4.0-cil libmono-profiler libmono-rabbitmq2.0-cil libmono-rabbitmq2.0-cil libmono-rabbitmq4.0-cil libmono-rabbitmq4.0-cil libmono-relaxng2.0-cil libmono-relaxng4.0-cil libmono-relaxng4.0-cil libmono-security2.0-cil libmono-security2.0-cil libmono-security4.0-cil libmono-sharpzip2.6-cil libmono-sharpzip2.6-cil libmono-sharpzip2.84-cil libmono-sharpzip2.84-cil libmono-sharpzip4.84-cil libmono-simd2.0-cil libmono-simd2.0-cil libmono-simd4.0-cil libmono-simd4.0-cil libmono-sqlite2.0-cil libmono-sqlite4.0-cil libmono-sqlite4.0-cil libmono-system2.0-cil libmono-system4.0-cil libmono-system4.0-cil libmono-system-componentmodel-composition4.0-cil libmono-system-componentmodel-dataannotations4.0-cil libmono-system-configuration4.0-cil libmono-system-configuration-install4.0-cil libmono-system-core4.0-cil libmono-system-core4.0-cil libmono-system-data2.0-cil libmono-system-data2.0-cil libmono-system-data4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-data-linq2.0-cil libmono-system-data-linq2.0-cil libmono-system-data-linq4.0-cil libmono-system-data-services4.0-cil libmono-system-data-services-client4.0-cil libmono-system-data-services-client4.0-cil libmono-system-design4.0-cil libmono-system-design4.0-cil libmono-system-drawing4.0-cil libmono-system-drawing4.0-cil libmono-system-drawing-design4.0-cil libmono-system-dynamic4.0-cil libmono-system-enterpriseservices4.0-cil libmono-system-enterpriseservices4.0-cil libmono-system-identitymodel4.0-cil libmono-system-identitymodel-selectors4.0-cil libmono-system-ldap2.0-cil libmono-system-ldap2.0-cil libmono-system-ldap4.0-cil libmono-system-management4.0-cil libmono-system-management4.0-cil libmono-system-messaging2.0-cil libmono-system-messaging4.0-cil libmono-system-messaging4.0-cil libmono-system-net4.0-cil libmono-system-numerics4.0-cil libmono-system-numerics4.0-cil libmono-system-runtime2.0-cil libmono-system-runtime2.0-cil libmono-system-runtime4.0-cil libmono-system-runtime-caching4.0-cil libmono-system-runtime-durableinstancing4.0-cil libmono-system-runtime-serialization4.0-cil libmono-system-runtime-serialization-formatters-soap4.0-cil libmono-system-security4.0-cil libmono-system-security4.0-cil libmono-system-servicemodel4.0-cil libmono-system-servicemodel4.0-cil libmono-system-servicemodel-discovery4.0-cil libmono-system-servicemodel-routing4.0-cil libmono-system-servicemodel-web4.0-cil libmono-system-serviceprocess4.0-cil libmono-system-transactions4.0-cil libmono-system-transactions4.0-cil libmono-system-web2.0-cil libmono-system-web2.0-cil libmono-system-web4.0-cil libmono-system-web-abstractions4.0-cil libmono-system-web-applicationservices4.0-cil libmono-system-web-dynamicdata4.0-cil libmono-system-web-extensions4.0-cil libmono-system-web-extensions-design4.0-cil libmono-system-web-mvc1.0-cil libmono-system-web-mvc1.0-cil libmono-system-web-mvc2.0-cil libmono-system-web-routing4.0-cil libmono-system-web-routing4.0-cil libmono-system-web-services4.0-cil libmono-system-windows-forms4.0-cil libmono-system-windows-forms-datavisualization4.0-cil libmono-system-xaml4.0-cil libmono-system-xaml4.0-cil libmono-system-xml4.0-cil libmono-system-xml4.0-cil libmono-system-xml-linq4.0-cil libmono-tasklets2.0-cil libmono-tasklets2.0-cil libmono-tasklets4.0-cil libmono-wcf3.0-cil libmono-wcf3.0-cil libmono-web4.0-cil libmono-web4.0-cil libmono-webbrowser2.0-cil libmono-webbrowser4.0-cil libmono-webbrowser4.0-cil libmono-webmatrix-data4.0-cil libmono-windowsbase3.0-cil libmono-windowsbase3.0-cil libmono-windowsbase4.0-cil libmono-winforms2.0-cil libmono-winforms2.0-cil libnunit2.6-cil libnunit2.6-cil libnunit-cil-dev libnunit-doc libpango1.0-0 libpango1.0-0 libpango-1.0-0 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpangoft2-1.0-0 libpangox-1.0-0 libpangox-1.0-0 libpangoxft-1.0-0 libpangoxft-1.0-0 libpciaccess0 libpixman-1-0 libpixman-1-0 libproxy1 libproxy1 librsvg2-2 librsvg2-common libsm6 libsm6 libsoup2.4-1 libsoup2.4-1 libthai0 libthai-data libthai-data libtxc-dxtn-s2tc0 libtxc-dxtn-s2tc0 libvisual-0.4-plugins libwebkit1.1-cil libwebkit1.1-cil libwebkitgtk-1.0-0 libwebkitgtk-1.0-0 libwebkitgtk-1.0-common libx11-xcb1 libx11-xcb1 libxcb-dri2-0 libxcb-dri2-0 libxcb-glx0 libxcb-glx0 libxcb-render0 libxcb-render0 libxcb-shm0 libxcomposite1 libxcomposite1 libxcursor1 libxcursor1 libxdamage1 libxdamage1 libxfixes3 libxfixes3 libxft2 libxft2 libxi6 libxi6 libxinerama1 libxrandr2 libxrandr2 libxrender1 libxrender1 libxt6 libxt6 libxxf86vm1 libxxf86vm1 mono-2.0-gac mono-2.0-gac mono-2.0-service mono-4.0-gac mono-4.0-gac mono-4.0-service mono-4.0-service mono-complete mono-csharp-shell mono-devel mono-devel mono-dmcs mono-dmcs monodoc-base monodoc-base monodoc-browser monodoc-gecko-manual monodoc-gtk2.0-manual monodoc-gtk-manual monodoc-manual monodoc-manual monodoc-webkit-manual mono-gac mono-gac mono-gmcs mono-gmcs mono-jay mono-jay mono-mcs mono-mcs mono-runtime mono-runtime-sgen mono-runtime-sgen mono-utils mono-utils mono-xbuild mono-xbuild openoffice.org-core pkg-config pkg-config spellutils ttf-arphic-bkai00mp ttf-arphic-bsmi00lp ttf-arphic-gbsn00lp ttf-baekmuk x11-common x11-common -y

# apt-get install autoconf automake libtool g++ gettext mono-gmcs git apache2-threaded-dev make libx11-dev libexif-dev libjpeg-dev libpng-dev libtiff-def -y
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
