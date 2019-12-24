#!/bin/bash
echo "enter your class roll number"
read n

case $n in
6) echo "You are detained from class due to low attendance";;
10) echo "You need to improve attendance to continue in this class";;
33) echo "You need to improve attendance to continue in this class";;
46) echo "You need to improve attendance to continue in this class";;
[1-6][0-7]) echo "You are good with attendance, you are eligible to write exam";;
*) echo "Roll number does not exist, please try with correct roll number";;
esac

