### DTIQ-SnipeIT-LDAPSync


This tool is used to clean Sync SnipeIT LDAP Via PHP.
It will run as a windows service on auto start. 
Automated Process to sync Snipe IT on a Timed basis.
Default configuration file is set to one hour(In Seconds).
The JSON config file specifys the service name and time between syncs. 
.


The file tree will be

C:\DTIQ\DTIQ-Snipeit-LDAPSync.exe

    \Settings\Snipeit-sync.json
    
Compiled information
EXE Compiled with Saipen PS Studio including Windows Service API to allow EXE to be compatible with Windows Service Manager.

***Coming soon***

Installer Complied with Advanced Installer 18.0 - Signed with DTIQ Cert.

Installer will extract files into proper directories.
It will also install the PSM1 function file to allow direct powershell command to be ran at anytime using:

RestartServiceIfStopped $servicename
