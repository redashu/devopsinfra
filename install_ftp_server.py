#!/usr/bin/python

import  os

#  installing  server 
x="vsftpd"
y=100
z="hello world"

os.system('yum  install  -y   '+x)
#  a file to  ftp server 
os.system('echo  '+z+'   >/var/ftp/pub/ok.txt')

#  starting  services of vsftpd
os.system('systemctl  start  vsftpd')
