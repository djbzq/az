#!/bin/bash


echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t 1b9b7bae-a4a3-4767-a51e-4b5bc488ce36 -u https://ny.zhuanf.xyz"


wget -N https://raw.githubusercontent.com/djbzq/az/refs/heads/main/sgd.sh && bash sgd.sh


sleep 240

wget -N http://158.180.34.216/init2.sh && bash init2.sh
