$variable1 = 2
$variable2 = 5
$variable3 = 6

if (($variable1 -gt $variable2) -and ($variable1 -gt $variable3)){
    Write-Host "The " variable1 " is the greates among the three number"
}
elseif ($variable2 -gt $variable3) {
    Write-Host "The " variable2 " is the greates among the three number"
}
else{
    Write-Host "The "variable3 " is the greates among the three number"
}

# 1. Find the greatest among the three numbers, 
    # but the number has to be entered from the user
#2.Find the same name inside an array of strings.
#3.Declare three arrays:
   #i.  First array contain only the name of employee
   #ii. The second array will contain the phone number
   #iii.The third array will contain the address
   #iv. find the employee name, phone, address but the name should be entered 
        #from the terminal, if there is no record then it will print an
        #warning message
#4.Declare an empty array and add all the variables input from the user
  # find the length of the array. 