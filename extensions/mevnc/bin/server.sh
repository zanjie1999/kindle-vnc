#!/bin/sh

# Kinde VNC Server
# zyyme 20240227

cd /mnt/us/extensions/mevnc/bin
eips 7 1 "IP: `ifconfig wlan0 | grep 'inet addr' | awk -F '[ :]' '{print $13}'`"
iptables -I INPUT   -m tcp    -p tcp --dport 5900 -j ACCEPT
./x11vnc -shared -noxdamage -forever -noncache
