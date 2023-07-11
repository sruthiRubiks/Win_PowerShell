#Alias


#Pipe
Get-Service | Sort-Object -Property DisplayName | Select-Object DisplayName


#Where-Object
Get-Service | Where-Object { $._ }