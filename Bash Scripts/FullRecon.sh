#!/bin/bash
#This is an easy way to run all recon commands and programs in a simple way aka the kitchen skin

ip=10.0.2.5

mkdir $ip
cd $ip
#created and changes a folder based on the target IP address. 

nmap -sV -sS -A -O --script=banner $ip > nmapscript.txt
nmap --script smb-os-discovery.nse --script-args=unsafe=1 $ip > nmapOS.txt
nmap --script http-title.nse --script-args=unsafe=1 $ip > nmaphttp.txt
nmap --script smb-vuln*  --script-args=unsafe=1 $ip > nmapsmb.txt
enum4linux $ip > en4l.txt
nbtscan $ip -v > nbts.txt
unicornscan -mU -v $ip > unicorn.txt
smtp-user-enum -M VRFY -U /usr/share/metasploit-framework/data/wordlists/unix_users.txt -t $ip > smtpenum.txt
