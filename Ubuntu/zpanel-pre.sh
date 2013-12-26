# Remove AppArmor before installing zpanel

/etc/init.d/apparmor stop
/etc/init.d/apparmor teardown
update-rc.d -f apparmor remove
apt-get remove apparmor apparmor-utils

echo "dns-nameservers 8.8.8.8 8.8.4.4" >> /etc/network/interfaces
/etc/init.d/networking restart

reboot
