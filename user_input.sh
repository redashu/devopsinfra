#!/bin/bash  
#  static  input  
x=100

echo   $x

########### inline input ##########
#  this is only second argument value
echo  $2
#  print  all argument 
echo  $@
#  print  number of  arguments given
echo  $#

<< EOF
############## intractive input  
echo  "type any command to run  :  ";

read  c;
echo   "wow you entered  $c"
sleep 1

$c

EOF
