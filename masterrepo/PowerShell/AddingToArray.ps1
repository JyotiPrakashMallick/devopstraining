function addArray {
    #$names = "Paul","John","Peter"
    #$names = New-Object System.Collections.ArrayList
    #$names.Add("Paul")
    #$names.Add("John")
    #$names.Add("Simon")
    #$names.Remove("Paul")
    #$names

    $name =@()
    $name += "Jyoti"
    $name += "Manoj"
    foreach ($item in $names){
        Write-Host $item
    }

}

addArray 