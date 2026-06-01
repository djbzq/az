#!/bin/bash

# 确保脚本在遇到错误时立即退出
set -e

echo "========================================="
echo "  开始安装 NewFuture DDNS 并配置定时任务"
echo "========================================="

# 1. 执行官方安装脚本
echo "👉 1. 正在下载并运行安装脚本..."
curl -#fSL https://ddns.newfuture.cc/install.sh | sh

# 2. 在 /root/ 目录下创建 config.json 配置文件
echo "👉 2. 正在创建 /root/config.json 配置文件..."
cat << 'EOF' > /root/config.json
{
  "$schema": "https://ddns.newfuture.cc/schema/v4.1.json",
  "providers": [
    {
      "provider": "dnspod_com",
      "id": "4297",
      "token": "5e077017dfce69a2dbd543e1cb0131da",
      "index4": ["url:http://api.ipify.cn", "public"],
      "ipv4": ["hk3.ewgfrweh.shop"],
      "line": "default",
      "ttl": 120
    },
    {
      "provider": "dnspod_com",
      "id": "4297",
      "token": "5e077017dfce69a2dbd543e1cb0131da",
      "index6": "public",
      "ipv6": ["hk3v6.ewgfrweh.shop"],
      "line": "default",
      "ttl": 120
    }
  ]
}
EOF

# 3. 运行 ddns 测试配置
# echo "👉 3. 正在首次运行 ddns 验证配置..."
# ddns -c config.json --debug

# 4. 设置 ddns 定时任务
echo "👉 4. 正在设置系统定时任务（每 3 分钟执行一次）..."
ddns task --install 1 -c /root/config.json --debug

echo "========================================="
echo "    🎉 所有步骤执行完毕，DDNS 服务配置成功！"
echo "========================================="
