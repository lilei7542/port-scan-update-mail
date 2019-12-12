#!/bin/bash

/bin/bash /home/lilei/ip-port-scan.sh |grep open > ~/r.now

a=`grep -vwf ~/r.back ~/r.now`

if [ -z "$a" ];then
  exit 0
else
  grep -vwf ~/r.back ~/r.now >~/new-restult.txt
  mv ~/r.now ~/r.back
fi


