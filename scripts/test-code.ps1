$scriptContent = Get-Content ./task.ps1

if ($scriptContent | Where-Object {$_.ToLower().Contains("new-azresourcegroup")}) { 
    Write-Host "Checking if script creates a resource group - ok" 
} else { 
    throw "Script is not creating a resource group, please review it. "
} 

if ($scriptContent | Where-Object {$_.ToLower().Contains("new-aznetworksecuritygroup")}) { 
    Write-Host "Checking if script creates a network security group - ok" 
} else { 
    throw "Script is not creating a network security group, please review it. "
} 

if ($scriptContent | Where-Object {$_.ToLower().Contains("new-azvirtualnetwork")}) { 
    Write-Host "Checking if script creates a virtual network - ok" 
} else { 
    throw "Script is not creating a virtual network, please review it. "
} 

if ($scriptContent | Where-Object {$_.ToLower().Contains("new-azsshkey")}) {
    Write-Host "Checking if script creates a SSH key resource - ok" 
} else { 
    throw "Script is not creating a SSH key resource, please review it. "
} 

if ($scriptContent | Where-Object {$_.ToLower().Contains("new-azvm")}) {
    Write-Host "Checking if script creates a VM resource - ok" 
} else { 
    throw "Script is not creating a VM resource, please review it. "
} 

if ($scriptContent | Where-Object {$_.ToLower().Contains("set-azvmextension")}) {
    Write-Host "Checking if script creates a VM extention resource - ok" 
} else { 
    throw "Script is not creating a VM extention resource with a Set-AzVMExtension comandled, please review it. "
} 
