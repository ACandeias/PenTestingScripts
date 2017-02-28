#!/bin/bash
#Simple Script to generate an XML file for NMAP Results

TargetIP=10.0.2.5

nmap -sV -A -O -oX $TargetIP.xml $TargetIP