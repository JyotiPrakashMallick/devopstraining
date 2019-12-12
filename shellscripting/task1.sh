#!/bin/bash

A=10
B=20
C=15

 if [ $A -gt $B ] && [ $A -gt $C ]
  then
  echo "A is the greater value"
  elif [ $B -gt $A ] && [ $B -gt $C ]
  then
  echo "B is the greater value"
 else
  echo "C is the greater value"

fi
