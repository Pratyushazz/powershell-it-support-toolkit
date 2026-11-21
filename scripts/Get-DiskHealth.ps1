<# Read-only fixed-disk capacity report. #>
[CmdletBinding()] param([double]$WarningFreePercent=15)
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | Select-Object DeviceID,VolumeName,@{N='SizeGB';E={[math]::Round($_.Size/1GB,2)}},@{N='FreeGB';E={[math]::Round($_.FreeSpace/1GB,2)}},@{N='FreePercent';E={if($_.Size){[math]::Round($_.FreeSpace/$_.Size*100,1)}else{0}}},@{N='Status';E={if($_.Size -and ($_.FreeSpace/$_.Size*100) -lt $WarningFreePercent){'Review - low free space'}else{'OK'}}}
