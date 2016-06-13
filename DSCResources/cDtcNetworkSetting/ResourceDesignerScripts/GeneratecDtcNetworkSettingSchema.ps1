$DtcName = New-xDscResourceProperty -Name DtcName -Type String -Attribute Key
$RemoteClientAccessEnabled = New-xDscResourceProperty -Name RemoteClientAccessEnabled -Type Boolean -Attribute Required
$RemoteAdministrationAccessEnabled = New-xDscResourceProperty -Name RemoteAdministrationAccessEnabled -Type Boolean -Attribute Required
$InboundTransactionsEnabled = New-xDscResourceProperty -Name InboundTransactionsEnabled -Type Boolean -Attribute Required
$OutboundTransactionsEnabled = New-xDscResourceProperty -Name OutboundTransactionsEnabled -Type Boolean -Attribute Required
$AuthenticationLevel = New-xDscResourceProperty -Name AuthenticationLevel -Type String -Attribute Required -ValidateSet "NoAuth","Incoming","Mutual"
$LUTransactionsEnabled = New-xDscResourceProperty -Name LUTransactionsEnabled -Type Boolean -Attribute Write
$XATransactionsEnabled = New-xDscResourceProperty -Name XATransactionsEnabled -Type Boolean -Attribute Write

New-xDscResource -Name cDtcNetworkSetting -Property $DtcName,$RemoteClientAccessEnabled,$RemoteAdministrationAccessEnabled,$InboundTransactionsEnabled,$OutboundTransactionsEnabled,$AuthenticationLevel,$LUTransactionsEnabled,$XATransactionsEnabled -ModuleName cDtc -FriendlyName cDtcNetworkSetting -Path "$env:USERPROFILE\Desktop\"