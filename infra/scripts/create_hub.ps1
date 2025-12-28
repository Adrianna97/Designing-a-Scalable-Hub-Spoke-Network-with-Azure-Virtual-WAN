# Login to Azure
Connect-AzAccount

# Variables
$location = "polandcentral"
$resourceGroup = "RG-VWAN"
$vwanName = "Starostwo-VirtualWAN"
$hubName = "OI-Hub"
$hubAddress = "10.0.0.0/16"

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create Virtual WAN
New-AzVirtualWan -ResourceGroupName $resourceGroup `
                 -Name $vwanName `
                 -Location $location `
                 -Type Standard

# Create Virtual Hub
New-AzVirtualHub -ResourceGroupName $resourceGroup `
                 -Name $hubName `
                 -AddressPrefix $hubAddress `
                 -VirtualWan $vwanName `
                 -Location $location
