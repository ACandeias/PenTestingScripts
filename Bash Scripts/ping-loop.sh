#!/bin/bash

for ip in $(seq 0 255); do
#Seq is the range of the $ip
ping -c 1 192.168.1.$ip |grep "bytes from" |cut -d" " -f 4|cut -d":" -f1 &
done
