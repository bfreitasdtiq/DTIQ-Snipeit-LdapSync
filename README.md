### DTIQ-SnipeIT-LDAPSync


This tool is used to sync the SnipeIT User Database over LDAP Via PHP.

It will run as a windows service on auto start. 

Automated Process to sync Snipe IT on a Timed basis.

Default configuration file is set to one hour(In Seconds).

The JSON config file specifies the service name and time between syncs. 

.


The file tree will be

C:\DTIQ\DTIQ-Snipeit-LDAPSync.exe

            \Settings\Snipeit-sync.json
            
            
            
### Event Log IDS Located in DTIQ-Remoteman 

EventID 900 Error DTIQ SnipeIT Ldap Sync Service has failed. IIS Service is not running. Trying to restart service.

EventID 901 Success Audit Restart of IIS has completed and is now running.  

EventID 902 Information DTIQ SnipeIT Ldap Sync Service has completed.


            



EXE Compiled with Saipen PS Studio including Windows Service API to allow EXE to be compatible with Windows Service Manager.

***Coming soon***

Installer Complied with Advanced Installer 18.0 - Signed with DTIQ Cert.

Installer will extract files into proper directories.
It will also install the PSM1 function file to allow direct powershell command to be ran at anytime using:

RestartServiceIfStopped $servicename





### Service Details
![image](https://user-images.githubusercontent.com/46353568/120114169-c2767200-c132-11eb-8beb-91b843f38c49.png)


### Event Log IDS Located in DTIQ-Remoteman 
![image](https://user-images.githubusercontent.com/46353568/120114228-fb164b80-c132-11eb-9599-a43e672c7801.png)
