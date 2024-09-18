#!/bin/bash

docker pull jellyfin/jellyfin

docker run \
    -d \
    -v /home/prima/docker-processes/jellyfin/config:/config \
    -v /home/prima/docker-processes/jellyfin/cache:/cache \
    -v /tank/qbittorrent:/media \
    --restart=unless-stopped \
    -p 8096:8096 \
    --name jellyfin \
    jellyfin/jellyfin
