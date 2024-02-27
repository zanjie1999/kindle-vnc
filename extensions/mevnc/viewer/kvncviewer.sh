#!/bin/sh
cd $(dirname "$0")
LD_LIBRARY_PATH=.
export LD_LIBRARY_PATH

lipc-set-prop com.lab126.powerd preventScreenSaver 1
fbdepth -q -H toggle
./refresh.sh &
./kindlevncviewer -config config.lua "$@"
fbdepth -q -H toggle
fbink -q -s -f
lipc-set-propl com.lab126.powerd preventScreenSaver 0
ps -ef | grep refresh.sh | awk '{system("kill "$2)}'
