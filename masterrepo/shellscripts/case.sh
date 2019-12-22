#!/bin/sh

Text="School"

case "$Text" in
   "College") echo "Where I get my graduation degree";;
   "School") echo "Where I got my intermediate Graduation degree  " ;;
   "Graduation") echo "It is just a degree that I hold";;
esac

#------------------------------------
 echo “Enter a number”
 read num
 case $num in
 [0-9]) echo "you have entered a single digit number";;
 [1-9][1-9]) echo "you have entered a two-digit number";;
 [1-9][1-9][1-9]) echo "you have entered a three-digit number";;
 *) echo "your entry does not match any of the conditions";;
 esac
#------------------------------------

x=6
case $x in
0) echo "Value of x is 0";;
5) echo "Value of x is 5";;
9) echo "Value of x is 9";;
*) echo "Unrecognized value";;
esac