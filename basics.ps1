
Get-Process | Format-Wide   #Alias Format-Wide  FW
Get-Process | FW -AutoSize
Get-Service | Format-List -Property *   #Alias Format-List  FL
Get-Member - MemberType ''

Select-Object -Property ' '

#Pipe
Get-Service | Sort-Object -Property DisplayName | Select-Object DisplayName


#Where-Object
Get-Service | Where-Object { $._ }

Get-Member - MemberType ''

Select-Object -Property ' '
