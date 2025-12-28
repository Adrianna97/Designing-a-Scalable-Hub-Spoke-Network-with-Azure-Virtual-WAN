param(
    [string]$resourceGroup,
    [string]$location,
    [string]$vnetName,
    [string]$addressPrefix
)

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create VNet
New-AzVirtualNetwork -Name $vnetName `
                     -ResourceGroupName $resourceGroup `
                     -Location $location `
                     -AddressPrefix $addressPrefix `
                     -Subnet @{"name"="default"; "AddressPrefix"=$addressPrefix}
