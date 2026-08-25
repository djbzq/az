#!/bin/bash


echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t 2cf3bd6e-92d1-4eca-9d59-9396ea154461 -u https://ny.zhuanf.xyz"

echo -e "a\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t 742711ca-a9d3-4233-8a5f-7170d8bcfc67 -u https://ny.zhuanf.xyz"



wget -N https://raw.githubusercontent.com/djbzq/az/refs/heads/main/hd2.sh && bash hd2.sh
