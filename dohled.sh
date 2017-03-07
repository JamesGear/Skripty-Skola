#!/bin/bash

cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
logged=`who | wc -l`
diskfree=`df -h | grep /dev/sda1 | awk -F " " '{print $4}'`

echo "Aktuální čas: "$cas >> home/student/Skripty-Skola/index.html
echo "Moje IP: "$ip >> home/student/Skripty-Skola/index.html
echo "Přijatá data: "$rx >> home/student/Skripty-Skola/index.html
echo "Odeslaná data: "$tx >> home/student/Skripty-Skola/index.html
echo "pocet přihlášených uživatelů: " $logged >> home/student/Skripty-Skola/index.html
echo "Volno na disku: " $diskfree >> home/student/Skripty-Skola/index.html
echo "<br></br>"
