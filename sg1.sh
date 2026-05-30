#!/bin/bash


echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t 5feff8b7-deb7-4194-b900-b02ed9d05d85 -u https://ny.zhuanf.xyz"


wget -N https://raw.githubusercontent.com/djbzq/az/refs/heads/main/sgd.sh && bash sgd.sh

