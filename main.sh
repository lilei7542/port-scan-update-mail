#!/bin/bash

/bin/bash /home/lilei/to-mail.sh

md5=`md5sum new-restult.txt`
str=`cat /home/lilei/md5.log`
if [ "$md5" == "$str" ] ;then
  exit 0
else
  md5sum new-restult.txt >/home/lilei/md5.log
  /usr/bin/python3.6 /home/lilei/mail-to-user.py
fi
