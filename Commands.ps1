#// Search for Commands 
#View all VERB commands related to Add
Get-Command -Verb <Add>

#View all NOUN commands related to COMPUTER
Get-Command -Noun <Computer> 

#View all CMDLETS
Get-Command -CommandType cmdlet

#View all commands containing text "event"
Get-Command *event*

#// Help on commands
Get-Help Format-Table
Format-Table -?
# Brings back Syntax,any Aliases, options that can be used with 'Format-Table'

help Format-Table
man Format-Table
#More detailed information
