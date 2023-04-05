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
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(curl https://raw.githubusercontent.com/lizsvr/cfnfree/main/ipvps.txt | grep $MYIP | awk '{print $3}')
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Telegram : https://t.me/liz_mine"
exit 0
fi
clear
lizupdate="raw.githubusercontent.com/owl64/VPN_Project/master/update"
# change direct
cd /usr/bin
# remove file
rm menu
rm -rf menu
# Download update
wget -O menu "https://${lizupdate}/menu.sh"
wget -O mbackup "https://${lizupdate}/mbackup.sh"
wget -O msetting "https://${lizupdate}/msetting.sh"
wget -O start-menu "https://${lizupdate}/start-menu.sh"
wget -O pshadowshock "https://${lizupdate}/pshadowshock.sh"
wget -O ptrojan "https://${lizupdate}/ptrojan.sh"
wget -O pxrayvless "https://${lizupdate}/pxrayvless.sh"
wget -O pxrayvmess "https://${lizupdate}/pxrayvmess.sh"
# change Permission
chmod +x menu
chmod +x pshadowshock
chmod +x ptrojan
chmod +x mbackup
chmod +x msetting
chmod +x start-menu
chmod +x pxrayvless
chmod +x pxrayvmess
# Update Backup
chmod +x addemail
chmod +x autobackup
chmod +x backup
chmod +x changesend
chmod +x limitspeed
chmod +x restore
chmod +x set-br
chmod +x startbackup
chmod +x stopbackup
chmod +x strt
chmod +x testsend
#change direct
cd /root
# clear
clear
echo -e "Succes Update Menu"
sleep 3
