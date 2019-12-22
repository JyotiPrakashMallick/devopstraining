#!/bin/sh

x=1
y=25
z=15

#     3 branches {one branch for each of you.....
#     1. Write a shell script for finding the greatest number in give 3 values 
#     2. Write a shell script for finding the identical string in a give 3 string
#     3. Push the changes to master after get reviewed from one person atleast  
#}

#-gt <greater than>
#-ge <greater than equal to>
#-lt <less than>
#-le <less than equal to
#-eq : equal 
#-le : not equal

if [ $x -gt $y ] && [ $x -gt $z ]
   then
   echo "X holds the greater value"
   elif [ $y -gt $x ] && [ $y -gt $z ]
   then
   echo "Y holds the greater value"
else
   echo "Z holds the larger value"
fi


string1="inevitable"
string2="loser"

if [ $string1 == $string2 ] #marching strings
then 
echo "String are identical"
else
echo "String are no identical"
fi 

int1=2
int2=2
if [ $int1 -eq $int2 ] #values comparasion
then
echo "Integers are equal"
else
echo "Integers are not equal"
fi