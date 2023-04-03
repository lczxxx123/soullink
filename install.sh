#!/bin/sh
# 0. 适用almalinux，需要配置
# 1. 安装&配置nginx
# 2. 安装配置证书

. ./配置
# 打印配置
echo "=====Configuration:"
while IFS='=' read -r key value; do
    if [[ ! "$key" =~ ^# && -n "$key" ]]; then
        echo "  $key=$value"
    fi
done < "./配置"

# 安装必须依赖
echo "=====Install Yi1 Lai4"
dnf update -y && dnf upgrade -y
dnf install -y git nginx

# 创建目录
mkdir -p $MuLu
echo "创建$MuLu"
ls -lah $MuLu
cd $MuLu
now_path=$(pwd); echo "当前目录是：$now_path"
echo ""
mkdir -p www/webpage
chown -R nginx:nginx www
chmod -R 755 www
ls -lah
if [ ! -d "soullink" ]; then
    git clone https://github.com/lczxxx123/soullink.git
    echo "soulink 有了"
else
    cd soullink
    git pull
    echo "有了git pull!"
    cd $MuLu
if

cp -r soullink/$WangZhan/* www/webpage

nginx -t -c $ntconf
cd /fa
