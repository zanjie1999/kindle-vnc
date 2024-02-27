mm#!/bin/sh

# Kinde VNC View Launcher
# zyyme 20240227

cd /mnt/us/extensions/mevnc/viewer
echo "Tip: Tap the screen with two fingers to rotate the screen"
echo "提示：双指点按可以切换屏幕旋转"
echo "Input your VNC Server IP and press ENTER"
echo "输入你的VNC服务端IP并按回车"
read ip
./kvncviewer.sh $ip > /dev/null 2>&1
