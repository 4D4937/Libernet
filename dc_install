#!/bin/bash
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
apt update
apt install subversion build-essential libssl-dev autoconf -y
wget -c "https://files.catbox.moe/or682p" -O N1
chmod 777 N1
read -p "port:" port
clean
./N1 $port -f -v
