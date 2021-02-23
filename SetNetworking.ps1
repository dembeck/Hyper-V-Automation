#First is to create the virtual switch, type is internal, name is "InternalSwitch"
New-VMSwitch -name InternalSwitch -SwitchType Internal

#Then setup NAT
New-NetNAT -Name NATNetwork -InternalIPInterfaceAddressPrefix 10.90.90.0/24

#Create additional switch named "NATSwitch"
New-VMSwitch -name NATSwitch -SwitchType Internal

#You need to now the interface index. Run this command below:
#Get-NetAdapter

#Assign IP Address to NATSwitch
New-NetIPAddress -IPAddress 10.90.90.1 -PrefixLength 24 -InterfaceIndex 33