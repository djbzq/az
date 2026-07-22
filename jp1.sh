#!/bin/bash

echo -e "\n\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-t 70c35e3d-7011-498b-9195-41a431555d10 -u https://ny.zhuanf.xyz"


wget -N https://raw.githubusercontent.com/djbzq/az/refs/heads/main/jp1d.sh && bash jp1d.sh
