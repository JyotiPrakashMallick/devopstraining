#!/bin/bash



echo "Welcome to DevOps Lottery: Please Enter Your Lucky Number"$a
read a

for (( n=1; n=$a; n++ ))
do
case $a in

53) echo "-----USD 50Million Winner-----";;
*) echo "Not in the winner list, better luck next time";;

esac
done
