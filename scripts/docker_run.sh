#!/usr/bin/sh

docker run \
    -d --name astra-sim-latest \
    --shm-size=8g \
    --network host \
    -v /home/ubuntu/yym/astra-sim:/root/astra-sim \
    astra-sim:latest \
    tail -f /dev/null