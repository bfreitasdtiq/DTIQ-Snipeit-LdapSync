### DTIQ-SnipeIT-LDAPSync


This tool is used to sync the SnipeIT User Database over LDAP Via PHP.

It will run as a windows service on auto start. 

It automates the process to sync Snipe IT on a timed basis.

Default configuration file is set to one hour(In Seconds).

The JSON config file specifies the service name and time between syncs. 

.


The file tree will be

C:\DTIQ\DTIQ-Snipeit-LDAPSync.exe

            \Settings\Snipeit-sync.json
            
            
            
### Event Log IDS Located in DTIQ-Remoteman 

EventID - 900 - Error <br>
DTIQ SnipeIT Ldap Sync Service has failed. IIS Service is not running. Trying to restart service.

EventID - 901 - Success Audit <br>
Restart of IIS has completed and is now running.  

EventID - 902 - Information<br>
DTIQ SnipeIT Ldap Sync Service has completed.


            



EXE Compiled with Saipen PS Studio including Windows Service API to allow EXE to be compatible with Windows Service Manager.

***Coming soon***

Installer Complied with Advanced Installer 18.0 - Signed with DTIQ Cert.

Installer will extract files into proper directories.
It will also install the PSM1 function file to allow direct powershell command to be ran at anytime using:

RestartServiceIfStopped $servicename





### Service Details
![image](https://user-images.githubusercontent.com/46353568/120114461-251c3d80-c134-11eb-8c7d-3e4ff96c0ed2.png)



### Event Log IDS Located in DTIQ-Remoteman 
![image](https://user-images.githubusercontent.com/46353568/120114429-07e76f00-c134-11eb-8d58-bbbfd03e95ad.png)

