#!/bin/bash

echo "Provisioning virtual machine..."
echo "Installing Vesta"

echo "We will install vesta as root.":
echo "Switch to root user...":
sudo su;
cd ~;
curl -O http://vestacp.com/pub/vst-install.sh;
bash vst-install.sh --nginx yes --apache yes --phpfpm no --vsftpd yes --proftpd no --exim yes --dovecot yes --spamassassin yes --clamav yes --named yes --iptables yes --fail2ban yes --mysql yes --postgresql no --remi yes --quota no --hostname vuv --email marco.bonomo+vesta@gmail.om --password 123456
rm vst-install.sh;
echo "Removed VestaCP installer.";
echo "Finished installation of Vesta Control Panel.";
echo "Exiting root user..."
exit;
echo "Please take note of your admin password above. Please enter it below, to change your password.";
su admin;
echo "Enter your password below to change your password.";
passwd;
exit;
echo "Finished provisioning."
