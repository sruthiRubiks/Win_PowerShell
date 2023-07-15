$var1 = "Hello"

Write-Host $var1

$var2 = Get-ComputerInfo
$var2. #click [Tab] button to see parameters
$var2.TimeZone

$var3 = "wsearch"   #parameter in Get-Service
Get-Service -Name $var3
Get-Service | Sort-Object -Property Status

#Filter services with status Running and shows only DisplayName of those services
Get-Service | Where-Object { $_.Status -eq "Running"} | Select-Object DisplayName

#Multiple lines for same info
$var4 = Get-Service
$var5 = $var4 | Where-Object { $_.Status -eq "Running"}
$var6 = $var5 | Select-Object DisplayName
$var6

"This is sample Text" | Out-File "D:\output\file1.txt"