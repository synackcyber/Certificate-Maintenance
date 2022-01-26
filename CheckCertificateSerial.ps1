# Check for serial number
param ([string]$serial ='')
# Vars
$getcert = Get-ChildItem Cert:\LocalMachine\*\* | Select-String -Pattern $serial

if ($getcert -match $serial ) {
    Write-Host "Great! You have the certificate"
    break
    }else{
        Write-Host "Failed to find certificate" 
    }

