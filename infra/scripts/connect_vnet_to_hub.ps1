param(
    [string]$resourceGroup,
    [string]$hubName,
    [string]$vnetResourceGroup,
    [string]$vnetName,
    [string]$connectionName
)

$hub = Get-AzVirtualHub -ResourceGroupName $resourceGroup -Name $hubName
$vnet = Get-AzVirtualNetwork -ResourceGroupName $vnetResourceGroup -Name $vnetName

New-AzVirtualHubVnetConnection -ResourceGroupName $resourceGroup `
                               -ParentResourceName $hubName `
                               -Name $connectionName `
                               -RemoteVirtualNetworkId $vnet.Id
