#!/usr/bin/python

import  time
import  os
print  "Hello world"

x=10
y=20
# swpping numbers

x,y=y,x

print  x
time.sleep(1)
print  y

#  you want to run  any OS command  in python
print  os.system('date')
