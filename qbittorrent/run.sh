#!/bin/bash

docker pull linuxserver/qbittorrent

docker run \
    -d \
    --restart=unless-stopped \
    --name qbittorrent \
    -e PUID=1001 -e PGID=1001 -e TZ=UTC \
    -e WEBUI_PORT=16384 -p 16384:16384 \
    -v /home/prima/docker-processes/qbittorrent/data:/config \
    -v /tank/qbittorrent:/downloads \
    linuxserver/qbittorrent
