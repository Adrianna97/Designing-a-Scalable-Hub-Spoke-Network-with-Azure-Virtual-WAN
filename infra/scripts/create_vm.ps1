param(
    [string]$resourceGroup,
    [string]$location,
    [string]$vmName,
    [string]$vnetName,
    [string]$subnetName,
    [string]$adminUser,
    [string]$adminPassword
)

# Get subnet
$subnet = Get-AzVirtualNetworkSubnetConfig -Name $subnetName `
           -VirtualNetwork (Get-AzVirtualNetwork -Name $vnetName -ResourceGroupName $resourceGroup)

# Create NIC
$nic = New-AzNetworkInterface -Name "$vmName-nic" `
                              -ResourceGroupName $resourceGroup `
                              -Location $location `
                              -SubnetId $subnet.Id

# Create VM config
$vmConfig = New-AzVMConfig -VMName $vmName -VMSize "Standard_B2s" |
    Set-AzVMOperatingSystem -Windows -ComputerName $vmName -Credential (New-Object System.Management.Automation.PSCredential($adminUser,(ConvertTo-SecureString $adminPassword -AsPlainText -Force))) |
    Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2022-datacenter" -Version "latest" |
    Add-AzVMNetworkInterface -Id $nic.Id

# Create VM
New-AzVM -ResourceGroupName $resourceGroup -Location $location -VM $vmConfig
