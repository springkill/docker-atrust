#!/bin/bash

# 获取正在运行的容器ID
CONTAINER_ID=$(sudo docker ps -q --filter ancestor=hagb/docker-atrust)

# 如果容器存在，则停止它
if [ -n "$CONTAINER_ID" ]; then
  sudo docker stop "$CONTAINER_ID"
  echo "容器已停止"
else
  echo "没有找到正在运行的容器"
fi

