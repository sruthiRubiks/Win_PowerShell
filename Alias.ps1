#Show all Aliases
Get-Alias
#Aliases
# Get-Command   gcm
#Format-Table   ft
#mkdir  - md
#Get-Service    gsv
#Where-Object   ?


Set-Alias -Name "ge" -Value "Get-Error" -Description "Display error details"

Get-Command Format-Table
Get-Command ge

