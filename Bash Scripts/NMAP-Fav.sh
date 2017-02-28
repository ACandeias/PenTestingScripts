#!/bin/bash
#Simple Script to run my favorite NMAP commands

TargetIP=10.0.2.5

nmap -sV $TargetIP
nmap -O $TargetIP
nmap --script banner $TargetIP