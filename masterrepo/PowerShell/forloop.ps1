$array = @("First", "Second", "Third")
Write-Host "The length of array is :"$array.length
for($i = 0; $i -lt $array.length; $i++)
{ 
    $array[$i] 
}