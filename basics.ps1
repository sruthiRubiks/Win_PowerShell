#Get-Process
# Gets the process currently running on local system
Get-Process | Format-Wide   #Alias Format-Wide  FW
Get-Process | FW -AutoSize  
    #Stop a process
Get-Process -ID 20496 | Stop-Process

# Start a process
Start-Process notepad
Start-Process -FilePath "notepad" -Verb runAs

#Stop Process
Stop-Process -Name 'Notepad' -Confirm

## Get-Service -lets you view your computer's status and list of services
#By default Get-Service command returns all the (stopped & running) services
Get-Service
Get-Service -Name "Win*"    #Services starting with Win
Get-Service | Format-List -Property *   #Alias Format-List  FL

Start-Service
Stop-Service

#Get-Member outputs a list of methods and properties associated with Get-Process
#To know what all the entries in the table mean.. pipe Get-Member
Get-Process | Get-Member
Get-Member - MemberType 'Method'

#Select-Object filtering and narrowing down specific objects
Select-Object -Property ''

#Sort Object    Default is ascending
Get-Service | Sort-Object -Property DisplayName | Select-Object DisplayName
Get-Service | Select-Object -ExpandProperty Name
Get-Service | Select-Object DisplayName, Status

Get-Process | Select-Object Product, NPM, CPU, Name, ID | Sort-Object CPU Descending

#Where-Object
Get-Service | Where-Object { $._ }
Get-Service | Where-Object Status -eq "Running"



#Get-EventLog   Computer event logs
Get-EventLog -LogName system -After "09/28/2022" -Before "10/01/2022" | Where-Object {$_.EntryType -like 'Error' -Or $_.EntryType -like 'Warning'} | Sort-Object Source

##Get-ChildItem     -Used to search through directories
#To view top level folders in C:\ dir
Get-ChildItem "C:\"
#To view all sub-folders and files in Program Files folder, use _path parameter
Get-ChildItem -Path "C:\Program Files"
#To view all files in a folder and names of the items, use -Recurse and -Name parameters
Get-ChildItem -Path "C:\Program Files" -Recurse | Select FullName

#Copy Item
Copy-Item "E:\Folder1" -Destination "E:\Folder2" -Recurse
# Recurse copies all sub-folders and files. Else, only top-level folder and files mentioned in the cmd will be copied

#Move Item
Move-Item -Path "E:\Folder1" -Destination "E:\Folder2" -Recurse

#Remove Item
Remove-Item "E:\Folder2\12.txt"

#Get-Content
#View content of an item without using text editor
Get-Content "E:\Folder2\12.txt"
#Specify the content length by using -TotalCount parameter

#Clear-Content
#Delete the contents of the file without deleting the file itself
Clear-Content -Path "E:\Folder2\12.txt"

#Set-Execution Policy
#Default execution policy is set to Restricted in PS to prevent execution of malicious scripts in PS environment. When we have to execute a local script, we may encounter system error.
Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned    #execute an unsigned script in an elevated PS prompt
#others are Restricted, AllSigned and Unrestricted

#Set-Location   
#If you want to run a script from a specific location other than current location/using automations. 
Set-Location "C:\Users\Pete\Documents"
# Sets "C:\Users\Pete\Documents" as current working directory

#Get-History    To view all recently executed commands in your current session at once
Get-History

#To get complete history of a previously executed command
Get-History Id | fl

#To view execution detials such as Status, start & end time and duration for 3rd cmd
Get-History 3 | fl

#To rerun any command from the list
Get-History 4

#Clear-History  To clear history from current session
Clear-History






