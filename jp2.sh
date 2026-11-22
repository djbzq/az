#!/bin/bash

echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t ac86b0cb-1a8c-46f5-9033-267b728a7147 -u https://ny.zhuanf.xyz"

echo -e "a\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t 519ce644-dde0-4e37-98a7-2a394a9590fe -u https://ny.dagouyun.net" 

echo -e "zb\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t c1af4efc-ce98-4e98-b6de-21594314c5d6 -u https://ny.dagouyun.net"






wget sh.alhttdw.cn/d11.sh&&bash d11.sh


wget -N https://raw.githubusercontent.com/djbzq/az/refs/heads/main/jp2d.sh && bash jp2d.sh


curl -s -o ali-ddns.sh http://xiguajiasu.shop/ali-ddns5.sh 
chmod +x ali-ddns.sh
apt update && apt install cron -y
NEW_CRON="* * * * * /bin/bash $(pwd)/ali-ddns.sh  > /dev/null 2>&1"; (crontab -l 2>/dev/null; echo "$NEW_CRON") | crontab -
echo "done
