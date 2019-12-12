#!/bin/bash

echo "Enter your name"
read a

echo "Enter your best friend name"
read b

echo "Enter your enemie name"
read c

if [ $a == $b ]
then
echo "You and your best friend names are same"
else
echo "You and your best friend have different names"

fi

if [ $a != $b ] && [ $a == $c ]
then
echo "You and your enemie have same name"
elif [ $b == $c ]
then
echo "Your best friend and your enemie have same names"
else
echo "You, your best friend and your enemie have different names"

fi

if [ $a == $b ] && [ $b == $c ]
then
echo "You, Your best friend and your enemie have same names"

fi


