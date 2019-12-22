$a = Read-Host -promt 'input your first number'

$b = Read-Host -promt 'input your second number'

$c = Read-Host -promt 'input your Third number'
 
 if($a -gt $b -and $a -gt $c){
     Write-Host "First number is greater"
 } elseif($b -gt $a -and $b -gt $c ){
     Write-Host "second number is greater"
 } else($c -gt $b -and $c -gt $a){
     Write-Host ("third number is greater")
 }
