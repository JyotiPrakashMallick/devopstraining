#! /bin/bash

echo " take the value as "
read input
case  $input in
mon)
  echo " boring day " ;;

for x in 1 2 3 
do 
      echo " go to gym " 
done
tue) 
  echo " routine day " ;;
wed)
  echo " mid day of week " ;;
sat) 
  echo " fun time ";;
*) 
  echo " unrecognized ";;
esac



