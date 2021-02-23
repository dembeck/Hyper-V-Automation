#Add new Virtual Switch
New-VMSwitch -name InternalSwitch -SwitchType Internal -AllowManagementOS $true

#Check status
Get-VMSwitch * | Format-Table Name