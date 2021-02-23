Get-NetIPAddress -AddressFamily IPv4 # Get the NetAdapterName to use

#Add new Virtual Switch
New-VMSwitch -name InternalSwitch -SwitchType Internal

#Check status
Get-VMSwitch * | Format-Table Name

#Remove virtual switch