#!/bin/bash
#This script scrapes web pages to discover subdomains from the HTML code on a webpage
#The second script takes those domains and resolves them to IP addresses
#Replace cisco.com with the target

wget cisco.com
#this downloads the cisco html

grep -o '[A-Za-z0-9_\.-]*\.*cisco.com' index.html |sort -u >domains.txt 
#this parses the html code for domain names ending in cisco.com
#it outputs the file to domains.txt which is referenced in the second script

./WebSubRecon2.sh


#Ensure this script is in the same directory as this script.
#WebSubRecon2.sh should not need any modification