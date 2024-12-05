#!/bin/bash

IMAGE="hagb/docker-atrust"

echo "正在拉取最新的镜像..."
sudo docker pull $IMAGE

#修改PASSWORD=xxxx为自己的密码
sudo docker run -d --rm --device /dev/net/tun --cap-add NET_ADMIN -e PASSWORD=xxxx -e URLWIN=1 -v $HOME/.atrust-data:/root \
-p 127.0.0.1:5901:5901 -p 127.0.0.1:1080:1080 -p 127.0.0.1:8888:8888 -p 127.0.0.1:54631:54631 \
--sysctl net.ipv4.conf.default.route_localnet=1 $IMAGE

