#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
#Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(curl https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/ipvps.txt | grep $MYIP | awk '{print $3}')
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Telegram : https://t.me/liz_mine"
exit 0
fi
clear
echo "This Feature Can Only Be Used According To Vps Data With This Autoscript"
echo "Please input link to your vps data backup file."
echo "You can check it on your email if you run backup data vps before."
read -rp "Link File: " -e url
wget -O backup.zip "$url"
cp backup.zip /root/
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cd /root/backup
cp passwd /etc/
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
# cp -r wireguard /etc/
# cp chap-secrets /etc/ppp/
# cp passwd1 /etc/ipsec.d/passwd
# cp ss.conf /etc/shadowsocks-libev/ss.conf
# cp -r akbarstorevpn /var/lib/
# cp -r sstp /home/
cp -r xray /etc/
# cp -r trojan-go /etc/
# cp -r shadowsocksr /usr/local/
cp -r public_html /home/vps/
#cp crontab /etc/
#strt
rm -rf /root/backup
rm -f backup.zip
echo "Berhasil Melakukan Restore"
sleep 1
echo "Menyalakan Ulang Service"
sleep 2
restart-xray
