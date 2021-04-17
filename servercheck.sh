#!/bin/bash

# Author: Bertrand kamche
# Script to check somme existing files and Application of the new Server
# Date 4/16/2021

echo "please inter your server name"
read SERVER

touch $SERVER

echo -e "\n*****checking of $SERVER server*****\n" > $SERVER

echo -e "\n*****number of cpu*****\n" >> $SERVER
echo -e "*****This server has: $(nproc) CPU" >> $SERVER
sleep 3

   echo -e "\n*****Checking total memory:*****\n"
echo -e "\n*****The Totak Memory is: $(free -m |grep Mem: |awk '{print $2}')Mb" >> $SERVER
sleep 3

echo -e "\n****Checking if the user puppet exist*****\n" >> $SERVER
 cat /etc/passwd |grep puppet
   if [ $? -eq 0 ]
  then
  echo "user puppet pass" >> $SERVER
  else
  echo "user puppet failed" >> $SERVER
  fi
sleep 3

echo -e "\n*****checking if the file /etc/group exist*****\n" >> $SERVER
if [ -f /etc/group ]
then
echo "file /etc/group pass" >> $SERVER
else
echo "file /etc/group failed" >> $SERVER
fi
sleep 3

echo -e "\n*****checking if the file /etc/passwd exist*****\n" >> $SERVER
if [ -f /etc/passwd ]
then
echo "file /etc/passwd pass" >> $SERVER
else
echo "file /etc/passwd failed" >> $SERVER
fi
sleep 3

echo -e "\n*****checking if the file /etc/httpd exists*****\n" >> $SERVER
if [ -f /etc/httpd ]
then
echo "file /etc/httpd pass" >> $SERVER
else
echo "file /etc/httpd failed" >> $SERVER
fi
sleep 3

echo -e "\n*****checking if the file /etc/kubernetes exists*****\n" >> $SERVER
if [ -f /etc/kubernetes ]
then
echo "file /etc/kubernetes pass" >> $SERVER
else
echo "file /etc/kubernetes failed" >> $SERVER
fi
sleep 3

echo -e "\n*****Checking to see if the first digit of the kernel version is 3 or more.*****\n" >> $SERVER
KERNEL=`uname -r |awk -F. '{print $1}'`

if [ ${KERNEL} -lt 3 ]
then
echo "kernel failed" >> $SERVER
else
echo "kernel passed" >> $SERVER
fi

echo "Please wait for $SERVER Check Processing"
sleep 6

cat $SERVER
echo  -e "\n*****\n"
~
~
~
~
~
~
