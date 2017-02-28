#!/bin/bash

nmap -O -oG report.txt 10.0.2.5-20 &&
#Preforms an NMAP scan and creates a Txt file
#this scans the subnet and provides you a CSV of live hosts. ensure VMs are running or you will receive limited results

grep "OS:" report.txt | sed 's/Host: //' | sed 's/Ports.*OS://' | sed 's/Seq.*$//' | sed 's/(//' | sed 's/)//' | awk '{print "\"" $1 "\",\""$2"\"," $3 " " $4 " "  $5 " "  $6 " "  $7 " "  $8 " "  $9 " " $10 " "  $11 " "  $12 " " $13 " " $14 "\""}' >report.csv

#grep and parse the txt file and outputs a csv. 