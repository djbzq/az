# 一键静默安装脚本
echo -e "a\ny\ny" | bash <(curl -fLSs https://dl.nyafw.com/download/nyanpass-install.sh) rel_nodeclient "-o -t f4fa0948-e5b9-4bd7-9e65-bdf08671679d -u https://ny.zhuanf.xyz"

curl -L https://raw.githubusercontent.com/nezhahq/scripts/main/agent/install.sh -o agent.sh && chmod +x agent.sh && env NZ_SERVER=aip.nanguacloud.com:8008 NZ_TLS=false NZ_CLIENT_SECRET=lwQTc2aPfqQBPuj6FVRLb32cgpsda5g8 NZ_UUID=6fceb9d2-59cd-487c-db50-4458dcdad940 ./agent.sh
