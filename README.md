# Certificate-Maintenance: These scriptlets are used to discover is a serial number exists on a PC and import intermediate and root certificates. 

These scriptslets were designed to be used with the Ninja-RMM scripting function by using the parameters field. Add these scripts into the N-RMM platform. When running the scripts you will copy and past the desired params into the box and run as system.


Check if certificate exists on PC:

To check the serial number simply copy the thumbprint of a certificate and past into the parameters field when running the CheckCertificateSerial.ps1 script.

Adding a certificate to PC: **Make sure to choose the correct certificate type: Intermediate or Root**

To add a certificate, search for your thumbprint on the censys database (https://search.censys.io/certificates/). Click the certificate link, then select the PEM tab on the page to see the ----BEGIN CERTIFICATE---- text. Right-click the blue "Download" button and copy the link. Past this copied URL into the parameter field on Ninja-RMM after running the ImportRootCertificates.ps1 or ImportIntermediateCertificates.ps1 scripts. 
