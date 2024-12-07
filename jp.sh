#!/bin/bash

# 安装第一个 rel_nodeclient
echo -e "\n\ny\ny" | bash <(curl -fLSs https://api.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t 515b6d00-17e4-4663-9b69-e66b0f47ea2b -u https://ny.chunfa.xyz"

# 安装第二个 rel_nodeclient
echo -e "a\ny\ny" | bash <(curl -fLSs https://api.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t 38353cbd-ee0f-4ec7-865c-379fa3f5b5dd -u https://ny.zhuanf.xyz"

