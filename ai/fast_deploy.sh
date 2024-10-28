#!/usr/bin/env bash
# . demo-magic.sh
# start_demo
apt update -y
apt install -y curl socat 
echo '#!/bin/bash'"\n" > /usr/local/bin/launch_jupyter.sh
ps -aux | grep jupyter | awk '{print $2}' | xargs kill -KILL
ip=`curl -s ifconfig.me`
echo "http://${ip}:6888" 
socat tcp-listen:6888,reuseaddr,fork tcp:127.0.0.1:6889