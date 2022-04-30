import sys
import PyPDF2
import re
import requests
import urllib.request
from datetime import date

def check_name():
    object = PyPDF2.PdfFileReader("cause_list.pdf")

# get number of pages
    NumPages = object.getNumPages()

    name = "SEACRCH-NAME-HERE"

    for i in range(0, NumPages):
        PageObj = object.getPage(i)
        Text = PageObj.extractText()
        res = re.search(name, Text)
        if(res != None):
            print(Text)
            quit()

today = date.today().strftime("%d%m%Y")
URL = 'https://www.mhc.tn.gov.in/judis/clists/clists-madras/causelists/pdf/cause_' + today + '.pdf'
try:
    filen, headers = urllib.request.urlretrieve(URL, "cause_list.pdf")
except:
    print("F")
    quit()

check_name()
print("N")
