$First=34
$Second=17
#-----------------------------------------------
# Arithmetic Binary Operators
#-----------------------------------------------
$Addition= $First+$Second
$Substraction = $First - $Second
$Multiplication = $First*$Second
$Division=$First/$Second
$Modulus=$First%$Second
$First++
$Increment=$First
$Second--
$Decrement=$Second

# + [Addition], - [Substraction], * [Multiplication], / [Division], % [Modulus], ++ [Increment], -- [Decrement]
Write-Host "------------------------------------------------------------"
Write-Host "|            Arithmetic Binary Operators Example           |"
Write-Host "------------------------------------------------------------"
Write-Host "Using Addition Operator the result is:" $Addition
Write-Host "Using Substraction Operator the result is:" $Substraction
Write-Host "Using Multiplication Operator the result is:" $Multiplication
Write-Host "Using Division Operator the result is:" $Division
Write-Host "Using Modulus Operator the result is:" $Modulus
Write-Host "Using Increment Operator the result is:" $Increment
Write-Host "Using Decrement Operator the result is:" $Decrement

# = [Simple assignment operator], += [Add AND assignment operator], -= [Subtract AND assignment operator], *= [Multiply AND assignment operator], 
#/= [Devide AND assignment operator], %= [Modulus AND assignment operator]
Write-Host "------------------------------------------------------------"
Write-Host "|                Assignment Operators Example              |"
Write-Host "------------------------------------------------------------"
$Fifth = 34
$AddAssignment+=$Fifth 
$SubstractAssignment-=$Fifth
$MultiplyAssignment*=$Fifth
$DivisionAssignment/=$Fifth
$ModulusAssignment%=$Fifth
Write-Host "------------------------------------------------------------"
Write-Host "Using Simple Assisgnment Operator the result is:" $Fifth
Write-Host "Using Addition Assisgnment Operator the result is:" $AddAssignment
Write-Host "Using Substraction Assisgnment Operator the result is:" $SubstractAssignment
Write-Host "Using Multiplication Assisgnment Operator the result is:" $MultiplyAssignment
Write-Host "Using Division Assisgnment Operator the result is:" $DivisionAssignment
Write-Host "Using Modulus Assisgnment Operator the result is:" $ModulusAssignment
Write-Host "------------------------------------------------------------"

if ((7 -eq 7) -and (2 -eq 5)){
 Write-Host "This is and operator"
}
else {
    Write-Host "Else block for and operator"
}


if ((7 -eq 7) -or (2 -eq 5)){
    Write-Host "This is or operator"
}
else {
    Write-Host "Else block for Or operator"
}



if ((3 -eq 3) -and !(2 -eq 3)){
    Write-Host "This is ! operator"
}
else {
    Write-Host "Else block for ! operator"
}


if ((3 -eq 3) -and -not (2 -eq 9)){
    Write-Host "This is not operator"
}
else {
    Write-Host "Else block for not operator"
}



