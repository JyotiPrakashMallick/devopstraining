

$stringArray = @("name", "adress","postalcode","phone")
$intarray = @(1,2,3,4)


Write-Host "the length of the string array is "$stringArray.Length
Write-Host "the length of the int array is "$intarray.Length

foreach ($element in $stringArray){
    Write-Host "Element number " " is "$element
}

foreach ($elemt in $intarray){
    Write-Host "Element number " " is "$elemt
}

$stringArrayType2 = "Country", "State", "City", "Village"   
$stringArrayType3 = 10,11,12,13
$stringArrayType4 = "Telengana",500089,"Manikonda",9987110209

Write-Host "Length is :"$stringArrayType2.Length
Write-Host "Length is :"$stringArrayType3.Length
Write-Host "Length is :"$stringArrayType4.Length