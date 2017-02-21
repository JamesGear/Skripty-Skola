#!/bin/bash

cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
logged=`who | wc -l`
diskfree=`df -h | grep /dev/sda1 | awk -F " " '{print $4}'`

echo "Aktuální čas: "$cas >> dohled
echo "Moje IP: "$ip >> dohled
echo "Přijatá data: "$rx >> dohled
echo "Odeslaná data: "$tx >> dohled
echo "pocet přihlášených uživatelů: " $logged >> dohled
echo "Volno na disku: " $diskfree >> dohled
