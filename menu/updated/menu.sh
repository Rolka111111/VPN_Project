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
BRED="\e[41m"
# ==========================================
#information
OK="${GREEN}[OK]${NC}"
Error="${RED}[Mistake]${NC}"
#Get Information Details
ip=$(wget -qO- ipinfo.io/ip)
domain=$(cat /root/domain)
timezone=$(wget -qO- ipinfo.io/timezone)
uptime=$(neofetch | grep "Uptime" | cut -d: -f2 | sed 's/ //g')
memory=$(neofetch | grep "Memory" | cut -d: -f2 | sed 's/ //g')
clear
echo -e "$BLUE━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$BRED          Informasi System           $NC"
echo -e "$BLUE━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$CLAY Up Time      :$NC $uptime $NC"
echo -e "$CLAY Memory       :$NC $memory $NC"
echo -e "$CLAY VPN Core     :$NC XRAY-CORE $NC"
echo -e "$CLAY Domain       :$NC $domain $NC"
echo -e "$CLAY IP VPS       :$NC $ip $NC"
echo -e "$BLUE━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$BRED          Informasi Time Zone        $NC"
echo -e "$BLUE━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$CLAY Time Zone    :$NC $timezone $NC"
echo -e "$CLAY Date         :$NC $(date +%A) $(date +%m-%d-%Y)"
echo -e ""
echo -e "$BLUE╔═══════════════════════════════════════$BLUE╗"
echo -e "$BLUE║$NC $BRED             [ Main Menu ]         $BLUE   ║"
echo -e "$BLUE╠═══════════════════════════════════════$BLUE╣"
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣$NC 1$NC. Panel Xray Vmess WS/GRPC    $BLUE      ║ "
echo -e "$BLUE╠➣$NC 2$NC. Panel Xray Vless WS/GRPC    $BLUE      ║ "
echo -e "$BLUE╠➣$NC 3$NC. Panel Trojan WS/GRPC        $BLUE      ║ "
echo -e "$BLUE╠➣$NC 4$NC. Panel ShadowShock WS/GRPC   $BLUE      ║ "
echo -e "$BLUE╠➣$NC 5$NC. Panel SSH WS CDN            $BLUE      ║ "
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╔═══════════════════════════════════════$BLUE╗"
echo -e "$BLUE║$NC $BRED             [ SYSTEM MENU ]       $BLUE   ║"
echo -e "$BLUE╠═══════════════════════════════════════$BLUE╣"
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣$NC 6$NC. Restart All Service         $BLUE      ║ "
echo -e "$BLUE╠➣$NC 7$NC. List Port Used              $BLUE      ║ "
echo -e "$BLUE╠➣$NC 8$NC. Cek Service                 $BLUE      ║ "
echo -e "$BLUE╠➣$NC 9$NC. Settings                    $BLUE      ║ "
echo -e "$BLUE╠➣$NC 10$NC. Bandwith                   $BLUE      ║ "
echo -e "$BLUE╠➣$NC 11$NC. Exit                       $BLUE      ║ "
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣$NC Mod Menu by andi64                   $BLUE║"
echo -e "$BLUE╠➣$NC Telegram https://t.me/andiowl          $BLUE║"
echo -e "$BLUE╚═══════════════════════════════════════╝$NC"
read -p "Select From Options [ 1 - 11 ] : " menu
echo -e ""
case $menu in
1)
pxrayvmess
;;
2)
pxrayvless
;;
3)
ptrojan
;;
4)
pshadowshock
;;
5)
mssh
;;
6)
restart-xray
;;
7)
cek-port
;;
8)
start-menu
;;
9)
msettings
;;
10)
mbandwith
;;
11)
clear
exit
;;
*)
clear
menu
;;
esac
#
