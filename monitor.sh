#!/bin/bash
# A primitive cpu temperature monitoting script 
filename=`date | awk '{print $2 $3 $1 $4}'`
while [ 1 -lt 2 ]
do
Core1=`sensors  | grep Core\ 0: | cut -d + -f2 | cut -d . -f1`
Core2=`sensors  | grep Core\ 1: | cut -d + -f2 | cut -d . -f1`
Core3=`sensors  | grep Core\ 2: | cut -d + -f2 | cut -d . -f1`
Core4=`sensors  | grep Core\ 3: | cut -d + -f2 | cut -d . -f1`
echo $Core1 $Core2 $Core3 $Core4 >> $filename
echo $Core1 $Core2 $Core3 $Core4 
escape=' '

lee=$Core1$escape$Core2$escape$Core3$escape$Core4
done