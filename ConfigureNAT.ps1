Get-NetNat # Shows Configured NATNetwork
New-NetNAT -Name “NATNetwork” -InternalIPInterfaceAddressPrefix 10.90.90.0/24

New-NetIPAddress -InterfaceIndex 9 -IPAddress 10.90.90.1 -PrefixLength 24 -InterfaceAlias “NATSwitch”

Get-NetNatStaticMapping
Add-NetNatStaticMapping -ExternalIPAddress "0.0.0.0/24" -ExternalPort 51005 -Protocol TCP -InternalIPAddress "10.90.90.5" -InternalPort 3389 -NatName NATNetwork

