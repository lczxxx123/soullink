#!/bin/sh
# -1 华人不用洋bash
# 0. 适用almalinux，需要配置
# 1. 安装&配置nginx
# 2. 安装配置证书

# 1. 安装&配置nginx
echo "=====pkill -9 nginx:"
export GIT_HTTPS_COMMAND="timeout 8s git-remote-https"
pkill -9 nginx
. ./配置
echo "=====Configuration:"
while IFS='=' read -r key value; do
    if [[ ! "$key" =~ ^# && -n "$key" ]]; then
        echo "  $key=$value"
    fi
done < "./配置"

echo "=====Install Yi1 Lai4"
dnf update -y && dnf upgrade -y
dnf install -y git nginx cronie socat

mkdir -p "$MuLu"
echo "创建$MuLu"
pwd && ls -lah "$MuLu"
cd "$MuLu"
now_path=$(pwd); echo "当前目录是：$now_path"
echo ""
mkdir -p www/webpage
chown -R nginx:nginx www
chmod -R 755 www
pwd && ls -lah
if [ ! -d "soullink" ]; then
    echo "=====soulink 要clone"
    git clone https://github.com/lczxxx123/soullink.git
    echo "soulink 有了"
else
    cd soullink
    echo "=====soulink 要 pull"
    #git pull
    echo "有了git pull!"
    cd "$MuLu"
fi

RootMuLu="$MuLu/www/webpage"
ConfMuLu="$MuLu/nt.conf"
SoullinkMuLu="$MuLu/soullink"
echo "=====网页放在$RootMuLu,nginx.conf放在$ConfMuLu,soullink放在$SoullinkMuLu"
pwd && ls -lah
\cp -r -f "soullink/$WangZhan/"* www/webpage
echo "$YuMing , $RootMuLu"
sed -e "s/@YUMING@/$YuMing/g" -e "s|@ROOTMULU@|$RootMuLu|g" "$SoullinkMuLu/nnn.conf" > $ConfMuLu

sed -e "s/@YUMING@/$YuMing/g" -e "s|@ROOTMULU@|$RootMuLu|g" "$SoullinkMuLu/nnn.conf"
echo "$SoullinkMuLu/nnn.conf"
exit

pwd && ls -lah
echo "=====nginx check conf"
nginx -t -c "$ConfMuLu"
touch "$MuLu/nginx.out"
truncate -s 1G "$MuLu/nginx.out"
echo "=====启动"
nohup nginx -c "$ConfMuLu" -g "daemon on;" > "$MuLu/nginx.out" 2>&1 &
echo "=====网页："
for i in {1..5}; do
  echo "睡觉的时间：$(date)"
  sleep 1s
done
curl localhost:80 | head -n 5
cd /fa
exit
# 2. 安装配置证书
echo "=====下载执行ACME"
# 如果失败了soullink底下有备份
if ! command -v acme.sh &> /dev/null
then
    echo "=====acme.sh 未安装，将尝试自动下载安装"
    curl -m 10 https://get.acme.sh | sh
    . ~/.bashrc
else
    echo "=====acme.sh 已经安装"
fi
if ! command -v acme.sh &> /dev/null
then
    echo "=====acme.sh 未安装，将尝试自动下载大陆安装"
    curl -m 10  https://gitee.com/neilpang/acme.sh | sh
    . ~/.bashrc
else
    echo "=====acme.sh 已经安装"
fi

echo "=====upgrade ACME"
acme.sh --upgrade --auto-upgrade
CrtMuLu="$MuLu/server.crt"
KeyMuLu="$MuLu/server.key"
fcMuLu="$MuLu/fullchain.crt"

echo "=====ACME 测试"
acme.sh --issue --server letsencrypt --test -d "$YuMing" -w "$RootMuLu" --keylength ec-256
acme.sh --set-default-ca --server letsencrypt
acme.sh --issue -d "$YuMing" -w "$RootMuLu" --keylength ec-256 --force
acme.sh --installcert -d "$YuMing" --cert-file "$CrtMuLu" --key-file "$KeyMuLu" --fullchain-file "$fcMuLu" --ecc

cd /fa