$PSVersionTable

#// Help on commands
Get-Help Format-Table
Format-Table -?
# Brings back Syntax,any Aliases, options that can be used with 'Format-Table'
Get-Help about_Comp*    #Comparision operators-Very detailed documentation
Get-Help Get-Command -Examples  #Gives examples
Get-Help Get-Command -ShowWindow    #Shows helpfile in a different window

help Format-Table
man Format-Table
#More detailed information

#// Search for Commands , similar to Get-Help
#View all VERB commands related to Add
Get-Command -Verb <Add>

#Get-Command    View all NOUN commands related to COMPUTER
Get-Command -Noun <Computer> 

#View all CMDLETS
Get-Command -CommandType cmdlet

#View all commands containing text "event"
Get-Command *event*
#To find cmdlets/commands that start with A
Get-Command -Name A* -CommandType cmdlet


ConciseView     #User selectable view (default for PS V7)
Get-Error   #Cmdlet for detailed view of the error that was raised in the console


