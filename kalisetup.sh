#!/bin/bash
echo "Cloning git repos......."
git clone https://github.com/ACandeias/PenTestingScripts.git
git clone https://github.com/ACandeias/IntrusionDetection.git
git clone https://github.com/shadow-box/Violent-Python-Examples.git
git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester.git
git clone https://github.com/clr2of8/DPAT.git
git clone https://github.com/clr2of8/scripts.git
git clone https://github.com/EmpireProject/Empire.git

echo "Installing Empire......."
cd Empire
cd setup
./install.sh

echo "Checking for updates...."
apt-get update
apt-get dist-upgrade

echo "Install OpenVAS......"
apt-get install openvas
openvas-setup


