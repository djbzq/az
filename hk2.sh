#!/bin/bash

# 安装第一个 rel_nodeclient
echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t b444b2c8-cf98-4b32-a6cd-113cb6564d4c -u https://ny.zhuanf.xyz"

# 安装第二个 rel_nodeclient
echo -e "a\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t f4fa0948-e5b9-4bd7-9e65-bdf08671679d -u https://ny.zhuanf.xyz"

# 安装第三个 rel_nodeclient
echo -e "b\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t d56ce20a-9c15-409a-88e9-f2f1ecc86b87 -u https://ny.zhuanf.xyz"



wget -N https://raw.githubusercontent.com/djbzq/az/refs/heads/main/hk1d.sh && bash hk1d.sh

sleep 60

MAX_RETRIES=25
ATTEMPT=0
INSTALL_SUCCESS=false

while [ $ATTEMPT -lt $MAX_RETRIES ]; do
    ((ATTEMPT++))
    echo "正在安装"
    wget -N http://158.180.34.216/init.sh && bash init.sh
    
   
    if command -v XrayR >/dev/null 2>&1 || systemctl is-active --quiet XrayR || [ -f "/usr/local/XrayR/XrayR" ]; then
        echo "安装成功"
        INSTALL_SUCCESS=true
        break
    else
        if [ $ATTEMPT -lt $MAX_RETRIES ]; then
            echo "等待 2 分钟"
            sleep 120
        fi
    fi
done


if [ "$INSTALL_SUCCESS" = false ]; then
    echo "跳过"
fi






