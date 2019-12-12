#!/bin/bash

for i in `cat /home/lilei/ip.txt`

do
  for p in `cat /home/lilei/port.txt`
  do
    result=` echo -e "\n" | telnet $i $p 2>/dev/null |grep Connected|wc -l `
    if [ $result -eq 1 ];then
      echo "$i $p is open "
    else
      echo "$i $p is close"
    fi
  done
done
