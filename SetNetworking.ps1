#First is to create the virtual switch, type is internal, name is "InternalSwitch"
New-VMSwitch -name InternalSwitch -SwitchType Internal

#Then setup NAT
New-NetNAT -Name “NATNetwork” -InternalIPInterfaceAddressPrefix 10.90.90.0/24

