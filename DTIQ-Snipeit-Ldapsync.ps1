<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2020 v5.7.172
	 Created on:   	5/29/2021 11:33 PM
	 Created by:    Brysen Freitas
	 Organization: 	DTIQ
	 Filename:     	DTIQ-SnipeIT-LDAPSync
	===========================================================================
	.DESCRIPTION
		Automated Process to sync Snipe IT on a hourly basis. Application built as a Service including Windows Services API
		Ensure the Event Viewer Log has been created. See DTIQ-Remoteman.ps1 to prep any machine
		Manual Service Creation Use the next two lines. Run as Admin VIA CMD:
#sc create "DTIQ-Snipeit-LDAPSYNC" Displayname= "DTIQ-Snipeit-LDAPSYNC" binpath= "C:\DTIQ\Dtiq-Snipeit-LDAPSYNC.exe" start= auto
#sc description DTIQ-SnipeITLdapSync "Used to sync SnipeIT users from Active directory. Created by Bfreitas@dtiq.com"

#>

#Module Import
Import-module -name restartserviceifstopped

#JSON CONFIG READ
$SettingsLDapSync = Get-Content -Path 'C:\dtiq\settings\Snipeit-sync.json' | ConvertFrom-Json
$synctime = $SettingsLDapSync.synctime
$servicename = $SettingsLDapSync.servname
#Loop
do {
function RestartServiceIfStopped([string]$service)
{
	$serviceStatus = (Get-Service $service).Status
	if ($serviceStatus -eq 'Stopped')
	{
			Write-EventLog -log DTIQ-Remoteman -source DTIQ -EntryType Error -eventID 900 -Message "DTIQ SnipeIT Ldap Sync Service has failed. IIS Service is not running. Trying to restart service."
			#Restarting Service
		Start-Service -displayname $service
		$serviceStatus = (Get-Service $service).Status
		if ($serviceStatus -eq 'Running')
			{
				Write-EventLog -log DTIQ-Remoteman -source DTIQ -EntryType SuccessAudit -eventID 901 -Message "Restart of IIS has completed and is now running."
				cd C:\inetpub\wwwroot\snipeit\
				php artisan snipeit:ldap-sync
				Write-EventLog -log DTIQ-Remoteman -source DTIQ -EntryType Information -eventID 902 -Message "DTIQ SnipeIT Ldap Sync Service has completed."
				
			}
	}

}
RestartServiceIfStopped $servicename
Start-Sleep -Seconds $Synctime
}
until ($infinity)
