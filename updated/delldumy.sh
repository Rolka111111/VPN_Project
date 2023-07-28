read -rp "Username : " -e user
read -rp "Expired(days) : " -e exp
sed -i "/^### $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^### $user $exp/,/^},{/d" /etc/xray/config.json
rm -f /etc/xray/vmess-$user-tls.json /etc/xray/vmess-$user-nontls.json /etc/xray/vmess-$user-grpc.json
systemctl restart xray.service

