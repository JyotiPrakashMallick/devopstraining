$array = @("FirstItem", "SecondItem", "ThirdItem")
$counter = 0;

do {
   $array[$counter]
   $counter += 1
} 
while($counter -lt $array.length)
 
# in other language
# while (<condition>){
#     do <task>
# }

# powershell

# do {
#     <task>
# }while {condition}