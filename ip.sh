#!/bin/bash
ip=`ifconfig | grep "inet adr" | awk -F ":" '{print $2}' | awk -F  " " '{print $1}'`

down=`ifconfig | grep "Přijato" | awk -F ":" '{print $2}'`
down=`echo $down | awk -F " " '{print $1 $2 $3}'  | awk -F " " '{print $1}'`

up=`ifconfig | grep "Odesláno" | awk -F ":" '{print $3}'`
up=`echo $up | awk -F " " '{print $4 $5 $6}'`
cas=`date +"%Y:%H:%M:%S"`
echo "Moje ip je: " $ip
echo "Cas je: " $cas
echo "Přijato" $down "bajtů"
echo "Odesláno" $up "bajtů"
