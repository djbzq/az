#!/bin/bash

echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t ac86b0cb-1a8c-46f5-9033-267b728a7147 -u https://ny.zhuanf.xyz"


wget -N https://raw.githubusercontent.com/djbzq/az/refs/heads/main/jp2d.sh && bash jp2d.sh
