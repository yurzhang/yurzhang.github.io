#coding=utf-8

import os
import time

print 'start git add'
os.system("git add -A")
time.sleep(3)

print 'start git commit'
os.system("git commit -a -m \"update provInfo\"")
time.sleep(3)

print 'start git push'
os.system("git push")

print "update ok~"