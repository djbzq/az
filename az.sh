#!/bin/bash

# 安装第一个 rel_nodeclient
echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t 47224fe6-8050-460c-badd-0d625718c3ea -u https://ny.zhuanf.xyz"

# 安装第二个 rel_nodeclient
echo -e "a\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t b444b2c8-cf98-4b32-a6cd-113cb6564d4c -u https://ny.zhuanf.xyz"
# 安装第三个 rel_nodeclient
echo -e "b\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t d56ce20a-9c15-409a-88e9-f2f1ecc86b87 -u https://ny.zhuanf.xyz"




curl -L https://raw.githubusercontent.com/nezhahq/scripts/main/agent/install.sh -o agent.sh && chmod +x agent.sh && env NZ_SERVER=aip.nanguacloud.com:8008 NZ_TLS=false NZ_CLIENT_SECRET=lwQTc2aPfqQBPuj6FVRLb32cgpsda5g8 NZ_UUID=a8a8a6b6-075b-c481-4363-c7e780275b5d ./agent.sh
