# Remove AppArmor before installing zpanel

/etc/init.d/apparmor stop
/etc/init.d/apparmor teardown
update-rc.d -f apparmor remove
apt-get remove apparmor apparmor-utils

reboot