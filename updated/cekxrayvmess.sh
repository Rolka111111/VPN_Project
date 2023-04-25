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
clear
echo " "
echo " "
if [ -e "/var/log/xray/access.log" ]; then
        LOG="/var/log/xray/access.log";
fi
if [ -e "/var/log/xray/error.log" ]; then
        LOG="/var/log/xray/error.log";
fi
if [ -f "/var/log/xray/access.log" ]; then
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ XRAY Info Live⇲                   \E[0m"
echo -e "\E[44;1;39m  ⇱ No | Tahun/Bulan/Tanggal  | Nama User ⇲     \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo "----------------------------------------------";
        cat /var/log/xray/access.log | awk '{print $0}' | tail -n 69120 | cut -d " " -f 1,7 | sort -u | uniq > /tmp/xray-login.txt
        cat /tmp/xray-login.txt | sort | uniq | nl
	rm -r /tmp/xray-login.txt
fi
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ Script MOD By andi64 ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""
echo "";