function arrayList {

    Write-Host "Hello World"
    [System.Collections.ArrayList]$screenshots = @()
    $screenshot = [PSCustomObject]@{
     name = $file.name
     permalink = $response.file.permalink
   }
   $screenshots.Add($screenshot) | Out-Null
   Write-Host "----->"$screenshots

}

arrayList