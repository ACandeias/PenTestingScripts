#test.py
#This is a python version of WGET

import requests
req = requests.get('http://cisco.com/')
print 'Response Code: ' + str(req.status_code)
print '\nResponse:\n' + req.text