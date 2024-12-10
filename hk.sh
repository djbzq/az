#!/bin/bash

# 安装第一个 rel_nodeclient
echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t 6a308281-b572-4b24-a890-3a394ab45fc8 -u https://ny.chunfa.xyz"

# 安装第二个 rel_nodeclient
echo -e "a\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t f4fa0948-e5b9-4bd7-9e65-bdf08671679d -u https://ny.zhuanf.xyz"


