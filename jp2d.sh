#!/bin/bash

# 确保脚本在遇到错误时立即退出
set -e

echo "========================================="
echo "  开始安装 "
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
      "id": "4378",
      "token": "89580ba3af49c47c758ed67a1ffacc35",
      "index4": ["url:https://api4.ipify.org", "public"],
      "ipv4": ["jp.fdgdfgredff.xyz"],
      "line": "default",
      "ttl": 600
    },
    {
      "provider": "dnspod_com",
      "id": "4378",
      "token": "89580ba3af49c47c758ed67a1ffacc35",
      "index6": "public",
      "ipv6": ["jp.fdgdfgredff.xyz"],
      "line": "default",
      "ttl": 600
    }
  ]
}
EOF

# 3. 运行 ddns 测试配置
# echo "👉 3. 正在首次运行 ddns 验证配置..."
# ddns -c config.json --debug

# 4. 设置 ddns 定时任务
echo "👉 4. 正在设置系统定时任务"
ddns task --install 1 -c /root/config.json --debug

echo "========================================="
echo "    🎉 所有步骤执行完毕，DDNS 服务配置成功！"
echo "========================================="
