# Check for serial number
$serial = '94c95da1e850bd85209a4a2af3e1fb1604f9bb66'
$certdir = "C:\certdownload"
$getcert = Get-ChildItem Cert:\LocalMachine\*\* | Select-String -Pattern $serial
#$string = Out-string -InputObject $getcert
if ($getcert -match $serial ) {
    Write-Host "Great! You have the certificate"
    break
    }else{
        Write-Host "Failed to find certificate" 
    }

