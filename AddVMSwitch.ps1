Get-NetIPAddress -AddressFamily IPv4 # Get the NetAdapterName to use

#Add new Virtual Switch
New-VMSwitch -NetAdapterName "Ethernet" -Name "InternalSwitch" -SwitchType Internal -AllowManagementOS $true

#Check status
Get-VMSwitch * | Format-Table Name