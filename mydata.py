#!/usr/bin/env python
import json
import xmltodict
import json
import requests

xmldata = requests.get("http://api.bart.gov/api/etd.aspx?cmd=etd&orig=RICH&key=MW9S-E7SL-26DU-VV8V")

if xmldata.status_code == 200 :
   content = xmldata.content
   mydict = xmltodict(content)

stationinfo = mydict['root']['station']

destinationinfo = mydict['root']['station']['etd']

for key,value in destinationinfo.items():
    print key,value



