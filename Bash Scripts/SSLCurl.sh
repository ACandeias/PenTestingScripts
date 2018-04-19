#!/bin/bash
#Reading file to declare as variable  
sites=$(<domains.txt)

#curling site and preforming a count of lines on the http page, declaring results as variables 
for site in $sites
do
httpslines=$(curl https://$sites/ | wc -l)
httplines=$(curl http://$sites/ | wc -l )

#Printing the results of the lines on the http page
echo "Site Name:" $sites
echo "HTTPS Lines" $httpslines
echo "HTTP Lines" $httplines

#Checking if the lines match on HTTP and HTTPs
if [ "$httpslines" -eq "$httplines" ]
then
	echo "HTTP and HTTPS Sites match"
else
	echo "HTTP and HTTPS Sites do NOT match"
fi

#Checking if the site supports the https protocol, if zero returns it does not
if [ "$httpslines" -eq "0" ]
then 
	echo "Site does not support HTTPS"
else
	echo "Site is servering a page over HTTPS"
fi	
	
#Checking if the site supports the http protocol, if zero returns it does not	
if [ "$httplines" -eq "0" ]
then 
	echo "Site does not support HTTP"
else
	echo "Site is servering a page over HTTP"
fi	

done