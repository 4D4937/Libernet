#!/bin/bash
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
apt update
apt install subversion build-essential libssl-dev autoconf -y
wget -c "https://files.catbox.moe/4lw5je" -O N2
chmod 777 N2
read -p "local_ip:" ip1
read -p "dc_ip:port:" ip2
./N2 -a $ip1 -c liber -k liberplus -l $ip2
