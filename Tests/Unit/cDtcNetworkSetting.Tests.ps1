$Global:DSCResourceName = 'cDtcNetworkSetting'
Import-Module "$($PSScriptRoot)\..\..\DSCResources\cDtcNetworkSetting\cDtcNetworkSetting.psm1"

$GetParams = @{
    DtcName="Local"
    RemoteClientAccessEnabled=$True
    RemoteAdministrationAccessEnabled=$True
    InboundTransactionsEnabled=$True
    OutboundTransactionsEnabled=$True
    AuthenticationLevel="Mutual"
}

$TestParams = @{
    DtcName="Local"
    RemoteClientAccessEnabled=$True
    RemoteAdministrationAccessEnabled=$True
    InboundTransactionsEnabled=$True
    OutboundTransactionsEnabled=$True
    AuthenticationLevel="Mutual"
    LUTransactionsEnabled =$True
    XATransactionsEnabled=$False
}

Describe "$($Global:DSCResourceName)\Get-TargetResource" {

    $GetReturn = Get-TargetResource @GetParams

    It "Should return a hashtable" {
        $GetReturn | Should BeOfType System.Collections.Hashtable
    }
    It "Should have a property RemoteClientAccessEnabled of type boolean" {
        $GetReturn.RemoteClientAccessEnabled | Should BeOfType System.Boolean
    }
    It "Should have a property RemoteAdministrationAccessEnabled of type boolean" {
        $GetReturn.RemoteAdministrationAccessEnabled | Should BeOfType System.Boolean
    }
    It "Should have a property InboundTransactionsEnabled of type boolean" {
        $GetReturn.InboundTransactionsEnabled | Should BeOfType System.Boolean
    }
    It "Should have a property OutboundTransactionsEnabled of type boolean" {
        $GetReturn.OutboundTransactionsEnabled | Should BeOfType System.Boolean
    }
    It "Should have a property AuthenticationLevel of type string" {
        $GetReturn.AuthenticationLevel | Should BeOfType System.String
    }
    It "Should have a property LUTransactionsEnabled of type boolean" {
        $GetReturn.LUTransactionsEnabled | Should BeOfType System.Boolean
    }
    It "Should have a property XATransactionsEnabled of type boolean" {
        $GetReturn.XATransactionsEnabled | Should BeOfType System.Boolean
    }
}

Describe "$($Global:DSCResourceName)\Test-TargetResource" {

    $TestReturn = Test-TargetResource @TestParams

    It "Should return a boolean" {
        $TestReturn | Should BeOfType System.Boolean
    }
}