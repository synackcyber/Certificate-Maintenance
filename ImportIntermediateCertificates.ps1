param ([string]$CertURI ='')

# Make DIRs
$certdir = "C:\certdownload"
mkdir $certdir
Set-Location $certdir

# Intermediate Certificate
Invoke-WebRequest -Uri $CertURI -OutFile intcertificate.cer
Import-Certificate -filepath "C:\certdownload\intcertificate.cer" -CertStoreLocation Cert:\LocalMachine\CA
cd C:\
Remove-Item -Force -Recurse "$certdir"
