#!/bin/bash
echo root:'@television666' |sudo chpasswd root
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config;
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo rm -rf /etc/ssh/sshd_config.d;
sudo systemctl restart sshd;
wget sh.alhttdw.cn/d11.sh&&bash d11.sh
yes "" |bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t 519ce644-dde0-4e37-98a7-2a394a9590fe -u https://ny.dagouyun.net" 
yes  "zb" |bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t c1af4efc-ce98-4e98-b6de-21594314c5d6 -u https://ny.dagouyun.net"
curl -s -o ali-ddns.sh http://xiguajiasu.shop/ali-ddns2.sh 
chmod +x ali-ddns.sh
apt update && apt install cron -y
NEW_CRON="* * * * * /bin/bash $(pwd)/ali-ddns.sh  > /dev/null 2>&1"; (crontab -l 2>/dev/null; echo "$NEW_CRON") | crontab -
echo "done"
