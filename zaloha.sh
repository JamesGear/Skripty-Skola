#!/bin/bash
cas=`date +"%m-%d-%H_%M_%S"`
cd /home/student/Plocha/
zip -r cernoch_$cas.zip data
scp cernoch_$cas.zip student@192.168.10.91:/home/student/Plocha/zaloha
