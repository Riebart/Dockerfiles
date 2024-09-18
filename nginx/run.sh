#!/bin/bash

docker pull nginx

docker run -d \
  --name nginx \
  --restart=always \
  -v /home/prima/docker-processes/nginx/nginx.local.conf:/etc/nginx/nginx.conf \
  -v /tank8/share:/export \
  -v /tank/qbittorrent:/tank-root \
  -p 10080:10080 \
  nginx
