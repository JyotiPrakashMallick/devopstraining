$a =2

Write-Host "The value of a is" $a
$b=3
$c=$a+$b
$d=$b-$a
$e=$a*$b
$f=$b/$a
$g=$b%$a
Write-Host "Value od addition is" $c
Write-Host "Value od substraction is" $d
Write-Host "Value od Multiplication is" $e
Write-Host "Value od devision is" $f
Write-Host "Value od modulus is" $g

$h +=$d
Write-Host "----->"$h

$test = "He Manoj"
$test += "How are you"
$test += "Hope you are doing good"
Write-Host $test



if ((3 -eq 3) -and -not (2 -eq 9)){
    Write-Host "This is not operator"
}
else {
    Write-Host "Else block for not operator"
}

#-0eq equal
#-lt less than
#-gt greater than
#-ge great than equal
#-le less than equal
#-ne not equal

if ((7 -eq 9) -or (2 -eq 3))
{
    Write-Host "This is or operator"
}
else {
    Write-Host "Else block for Or operator"
}



$string1="Texas"
$string2="Texas"


if($string1 -match $string2){
    Write-Host "Second Cond is true"
}
else {
    Write-Host "Second Cond is false"
}


$string3 = "Hi"
$string4 = "Hi"
if ("Hi" -contains $string3) {
    Write-Host "Yes it is present"
}
else {
    Write-Host "Its not present"
}

if ($string4 -contains $string3) {
    Write-Host "Yes it is present"
}
else {
    Write-Host "Its not present"
}