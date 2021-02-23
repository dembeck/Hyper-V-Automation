Get-NetNat # Shows Configured NATNetwork
New-NetNAT -Name “NATNetwork” -InternalIPInterfaceAddressPrefix 10.90.90.0/24

New-NetIPAddress -InterfaceIndex 9 -IPAddress 10.90.90.1 -PrefixLength 24 -InterfaceAlias “NATSwitch”
