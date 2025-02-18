#!/bin/sh 

# Run the mini-httpd webserver on the port defined in the
# mini-httpd.conf file and set the document directory to the current
# directory

PID=`pidof mini-httpd`

if [ ! -z $PID ]; then
    kill $PID
fi

sleep 1

echo "Launching mini-httpd..."
# 设置本地服务器的URI指向(也就是打开IP地址后的起始目录)
/usr/sbin/mini-httpd -C `rospack find rbx2_gui`/scripts/mini-httpd.conf -d `rospack find rbx2_gui`
