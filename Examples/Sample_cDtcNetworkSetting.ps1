$DevEnvironment = @{
    AllNodes = 
    @(
        @{
            NodeName = "Localhost"
        }
    )
}

Configuration EnableDtcSettings
{
    param()

    Import-DscResource -ModuleName "cDtc"

    Node $AllNodes.NodeName
    {
        cDtcNetworkSetting Local
        {
            DtcName = "Local"
            RemoteClientAccessEnabled = $true
            RemoteAdministrationAccessEnabled = $true
            InboundTransactionsEnabled = $true
            OutboundTransactionsEnabled = $true
            AuthenticationLevel = "Mutual"
        }
    }
}
EnableDtcSettings -ConfigurationData $DevEnvironment -OutputPath "$($PSScriptRoot)\EnableDtcSettings\"
