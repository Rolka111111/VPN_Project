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
tls="$(cat ~/log-install.txt | grep -w "VMESS WS TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "VMESS WS HTTP" | cut -d: -f2|sed 's/ //g')"
echo -e "======================================"
echo -e ""
echo -e "[1]. Change Port Vmess TLS $tls"
echo -e "[2]. Change Port Vmess None TLS $none"
echo -e "[3]. Exit"
echo -e ""
echo -e "======================================"
echo -e ""
read -p "Select From Options [ 1-3 ] : " prot
echo -e ""
case $prot in
1)
read -p "New Port Vmess TLS : " tls1
if [ -z $tls1 ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $tls1)
if [[ -z $cek ]]; then
# sed -i "s/$tls/$tls1/g" /etc/xray/config.json
sed -i "s/$tls/$tls1/g" /etc/nginx/conf.d/xray.conf
sed -i "s/   - XRAYS TROJAN WS TLS        : $tls/   - XRAYS TROJAN WS TLS        : $tls1/g" /root/install-log.txt
sed -i "s/   - XRAYS SHADOWSOCKS WS TLS   : $tls/   - XRAYS SHADOWSOCKS WS TLS   : $tls1/g" /root/install-log.txt
sed -i "s/   - XRAYS VLESS WS TLS         : $tls/   - XRAYS VLESS WS TLS         : $tls1/g" /root/install-log.txt
sed -i "s/   - XRAYS VMESS WS TLS         : $tls/   - XRAYS VMESS WS TLS         : $tls1/g" /root/install-log.txt
sed -i "s/   - XRAYS TROJAN GRPC          : $tls/   - XRAYS TROJAN WS GRPC       : $tls1/g" /root/install-log.txt
sed -i "s/   - XRAYS SHADOWSOCKS GRPC     : $tls/   - XRAYS SHADOWSOCKS GRPC     : $tls1/g" /root/install-log.txt 
sed -i "s/   - XRAYS VMESS GRPC           : $tls/   - XRAYS VMESS GRPC           : $tls1/g" /root/install-log.txt
sed -i "s/   - XRAYS VLESS GRPC           : $tls/   - XRAYS VLESS GRPC           : $tls1/g" /root/install-log.txt
iptables -D INPUT -m state --state NEW -m tcp -p tcp --dport $tls -j ACCEPT
iptables -D INPUT -m state --state NEW -m udp -p udp --dport $tls -j ACCEPT
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport $tls1 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport $tls1 -j ACCEPT
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save > /dev/null
netfilter-persistent reload > /dev/null
systemctl restart xray.service > /dev/null
echo -e "\e[032;1mPort $tls1 modified successfully\e[0m"
else
echo "Port $tls1 is used"
fi
;;
2)
echo "Input Only 2 Character (eg : 69)"
read -p "New Port Vmess None TLS : " none1
if [ -z $none1 ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $none1)
if [[ -z $cek ]]; then
sed -i "s/$none/$none1/g" /etc/nginx/conf.d/xray.conf
# sed -i "s/$none/$none1/g" /etc/xray/config.json
sed -i "s/   - XRAYS TROJAN WS HTTP       : $none/   - XRAYS TROJAN WS HTTP       : $none1/g" /root/log-install.txt
sed -i "s/   - XRAYS SHADOWSOCKS WS HTTP  : $none/   - XRAYS SHADOWSOCKS WS HTTP  : $none1/g" /root/log-install.txt
sed -i "s/   - XRAYS VLESS WS HTTP        : $none/   - XRAYS VLESS WS HTTP        : $none1/g" /root/log-install.txt
sed -i "s/   - XRAYS VMESS WS HTTP        : $none/   - XRAYS VMESS WS HTTP        : $none1/g" /root/log-install.txt
iptables -D INPUT -m state --state NEW -m tcp -p tcp --dport $none -j ACCEPT
iptables -D INPUT -m state --state NEW -m udp -p udp --dport $none -j ACCEPT
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport $none1 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport $none1 -j ACCEPT
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save > /dev/null
netfilter-persistent reload > /dev/null
systemctl restart xray.service > /dev/null
echo -e "\e[032;1mPort $none1 modified successfully\e[0m"
else
echo "Port $none1 is used"
fi
;;
3)
exit
menu
;;
*)
echo "Please enter an correct number"
;;
esac
