$array = @("First", "Second", "Third")

# foreach ($element in $array) { 
#     $element 
# }


 foreach($i in $array){
     Write-Host "------>"$i
}
 
#$array | foreach { $_ }
