param ([string]$CertURI ='')

# Make DIRs
$certdir = "C:\certdownload"
mkdir $certdir
Set-Location $certdir

# Intermediate Certificate
Invoke-WebRequest -Uri $CertURI -OutFile rootcertificate.cer
Import-Certificate -filepath "C:\certdownload\rootcertificate.cer" -CertStoreLocation Cert:\LocalMachine\Root
cd C:\
Remove-Item -Force -Recurse "$certdir"
