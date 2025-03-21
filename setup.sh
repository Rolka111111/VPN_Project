#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
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
# =========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(wget -qO- ipinfo.io/ip);
clear
mkdir /var/lib/akbarstorevpn;
mkdir /var/lib/crot;
mkdir /etc/xray;
echo "IP=" >> /var/lib/crot/ipvps.conf
echo "IP=" >> /var/lib/akbarstorevpn/ipvps.conf
cd

echo -e "[ ${green}INFO${NC} ] Preparing the install file"
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1

#
# Add Domain
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/updated/adddomain.sh && chmod +x adddomain.sh && ./adddomain.sh
#
#install tools/alat
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/install-tools.sh && chmod +x install-tools.sh && ./install-tools.sh
#
#Install SSH WS
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/ssh/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh

#Instal Xray
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/install-xray.sh && chmod +x install-xray.sh && ./install-xray.sh
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/sshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh

#install OVPN
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/ssh/vpn.sh && chmod +x vpn.sh && ./vpn.sh

#install OHP
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/ohp/ohp-dropbear.sh && chmod +x ohp-dropbear.sh && ./ohp-dropbear.sh
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/ohp/ohp-ssh.sh && chmod +x ohp-ssh.sh && ./ohp-ssh.sh
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/ohp/ohp.sh && chmod +x ohp.sh && ./ohp.sh

#Install Limit For Xray
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/limit/limit.sh && chmod +x limit.sh && ./limit.sh

#install xmenu
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/menu/updatedll.sh && chmod +x updatedll.sh && ./updatedll.sh

#install Backup
wget https://raw.githubusercontent.com/Rolka111111/VPN_Project/master/backup/set-br.sh && chmod +x set-br.sh && ./set-br.sh


#SELESAI
# collor status
error1="${RED} [ERROR] ${NC}"
success="${GREEN} [OK] ${NC}"
# Cek Domain
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP" = "" ]]; then
	clear
    echo -e " ${error1}Installation Failed!!"
	rm -rf updatedll
	rm -rf updatedll.sh
	rm -rf setup.sh
	rm -rf install-xray.sh
	rm -rf install-tools.sh
	rm -rf adddomain.sh
	echo " Reboot 15 Sec"
	sleep 15
	reboot
else
	clear
	echo "${success}Installation has been completed!!"
	sleep 3
	clear
	echo " "
	echo "============================================================================" | tee -a log-install.txt
	echo "" | tee -a log-install.txt
	echo "----------------------------------------------------------------------------" | tee -a log-install.txt
	echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
	echo -e "    SCRIPT XRAY Multi Port"  | tee -a log-install.txt
	echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
	echo ""  | tee -a log-install.txt
	echo "   >>> Service & Port"  | tee -a log-install.txt
	echo "   - SSH Websocket			  : 80 [ON]" | tee -a log-install.txt
	echo "   - SSH SSL Websocket		  : 443" | tee -a log-install.txt
	echo "   - Dropbear					  : 109, 143" | tee -a log-install.txt
	echo "   - Stunnel4					  : 447, 777" | tee -a log-install.txt
	echo "   - Badvpn					  : 7100-7900" | tee -a log-install.txt
	echo "   - Nginx                      : 89"  | tee -a log-install.txt
	echo "   - XRAYS TROJAN WS TLS        : 443"  | tee -a log-install.txt
	echo "   - XRAYS SHADOWSOCKS WS TLS   : 443"  | tee -a log-install.txt
	echo "   - XRAYS VLESS WS TLS         : 443"  | tee -a log-install.txt
	echo "   - XRAYS VMESS WS TLS         : 443"  | tee -a log-install.txt
	echo "   - XRAYS TROJAN WS HTTP       : 80"  | tee -a log-install.txt
	echo "   - XRAYS SHADOWSOCKS WS HTTP  : 80"  | tee -a log-install.txt
	echo "   - XRAYS VLESS WS HTTP        : 80"  | tee -a log-install.txt
	echo "   - XRAYS VMESS WS HTTP        : 80"  | tee -a log-install.txt
	echo "   - XRAYS TROJAN GRPC          : 443"  | tee -a log-install.txt
	echo "   - XRAYS SHADOWSOCKS GRPC     : 443"  | tee -a log-install.txt
	echo "   - XRAYS VMESS GRPC           : 443"  | tee -a log-install.txt
	echo "   - XRAYS VLESS GRPC           : 443"  | tee -a log-install.txt
	echo ""  | tee -a log-install.txt
	echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
	echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
	echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
	echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
	echo "   - IPtables                : [ON]"  | tee -a log-install.txt
	echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
	echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
	echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
	echo "   - Autobackup Data" | tee -a log-install.txt
	echo "   - Restore Data" | tee -a log-install.txt
	echo "   - Auto Delete Expired Account" | tee -a log-install.txt
	echo "   - Full Orders For Various Services" | tee -a log-install.txt
	echo "   - White Label" | tee -a log-install.txt
	echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
	echo " Reboot 15 Sec"
	sleep 15
	cd
	rm -rf updatedll
	rm -rf updatedll.sh
	rm -rf setup.sh
	rm -rf install-xray.sh
	rm -rf install-tools.sh
	rm -rf adddomain.sh
	sleep 1
	reboot
fi
