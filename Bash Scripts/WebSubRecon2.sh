#!/bin/bash
#Requires WebSubRecon1.sh
#This should not need any modification

for url in $(cat domains.txt);do
#domains.txt is reference in the for loop to resolve all the domains

host $url |grep "has address" |cut -d" " -f4 
#host resolves the domain, grep to clean up the output to show just IP addresses

done
