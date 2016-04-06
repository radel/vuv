#!/bin/bash

echo "Provisioning virtual machine..."
# Git
echo "Installing Git"
apt-get install git -y > /dev/null
# Node
echo "Installing Node"
sudo apt-get install nodejs -y > /dev/null
sudo apt-get install npm -y > /dev/null

echo "Installing Vesta"

echo "We will install vesta as root.":
echo "Switch to root user...":
sudo su;
cd ~;
curl -O http://vestacp.com/pub/vst-install.sh;
bash vst-install.sh --force -e marco.bonomo2@gmail.com;
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
