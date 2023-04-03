#!/bin/sh
# -2 先配置好dns记录
# -1 华人不用洋bash
# 0. 适用almalinux，需要配置
# 1. 安装&配置nginx
# 2. 安装配置证书
# 3. 安装xray ，是长亭科技推出的免费白帽子工具平台,目前社区有xray 漏洞扫描器和Radium 爬虫工具,均有多名经验丰富的安全开发人员和数万名社区贡献者共同打造而成 了解更多 一个免费的安全社区工具平台。

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
    git pull
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
curl localhost:80 | head -n 6
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

# 3. 安装xray ，是长亭科技推出的免费白帽子工具平台,目前社区有xray 漏洞扫描器和Radium 爬虫工具,均有多名经验丰富的安全开发人员和数万名社区贡献者共同打造而成 了解更多 一个免费的安全社区工具平台。
echo "=====安全社区工具平台"
cd "$MuLu"
pwd && ls -lah
curl -Lo install-release.sh https://github.com/XTLS/Xray-install/raw/main/install-release.sh
bash install-release.sh 
chmod +r "$KeyMuLu"

echo "=====配置cert自动更新"
RenewMuLu="$MuLu/renew.sh"
sed -e "s/@YUMING@/$YuMing/g" -e "s|@KeyMuLu@|$KeyMuLu|g" -e "s|@fcMuLu@|$fcMuLu|g" "$SoullinkMuLu/xray-cert-renew.sh.muban" > $RenewMuLu
chmod +x "$RenewMulu"
#!/bin/bash

# 添加renew任务到crontab
(crontab -l ; echo "0 1 1 * * $RenewMulu") | crontab -
crontab -l

echo "=====创建日志文件"
ACCESSLOG="$MuLu/access.log"
ERRORLOG="$MuLu/error.log"
truncate -s 1G "$ACCESSLOG"
truncate -s 1G "$ERRORLOG"

touch "$ACCESSLOG" && touch "$ERRORLOG" && chmod a+w "$ACCESSLOG" && chmod a+w "$ERRORLOG"
pwd && ls -lah

cd /fa