#!/bin/bash  

#   starting  while loop 

while  [ true ]
do   #  its a keyword to start while loop code

echo  "Press 1  to  check current date and time : "
echo  "Press 2  to  restart  httpd service      : "
echo  "Press 3  to reboot your server           : "
echo  "Press 4  to host a php based website on apache server : "
echo  "Press 5  to create a user and its password  : "
echo  "Press 6  to change the password of  any user : "
echo   "Press  100  to  close your script"

#  read is the keyword  in shell to store user input in a variable 
#  choice is the variable 
read  choice;

#  Now implementing options 

if  [  $choice -eq 1  ]
then
	date

elif   [  $choice -eq  5   ]
then
	read -p  "plz enter user name:  "  u;
	useradd  $u
	passwd   $u

elif   [ $choice -eq 4   ]
then
	yum   install  httpd  -y
	echo  "hello"  >/var/www/html/index.html
	systemctl  start  httpd  
	systemctl enable  httpd  

elif  [  $choice -eq 100  ]
then
	exit;
else 

	echo  "Invalid Input "

fi

done    #  keyword to break  or end while loop 

