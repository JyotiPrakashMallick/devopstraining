$x = " enter the first number " Read-Host
$y = " enter the Second number " Read-Host
$z = " enter the third number " Read-Host
if ($x -gt $y -and $x -gt $z)
{
    Write-Host " first number is greatest "
}
elseif ($y -gt $x -and $y -gt $z)
{
    Write-Host " Second number is greatest " $y
}

else
{
    Write-Host " third number is greatest " $z
}

