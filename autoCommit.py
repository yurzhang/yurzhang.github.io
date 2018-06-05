#coding=utf-8

import os
import time

os.system("git add -A")
time.sleep(3)

os.system("git commit -a -m \"update provInfo\"")
time.sleep(3)

os.system("git push")

print "update ok~"