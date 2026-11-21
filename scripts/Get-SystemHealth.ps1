<# .SYNOPSIS Read-only system health summary. #>
[CmdletBinding()] param()
$os = Get-CimInstance Win32_OperatingSystem
$cs = Get-CimInstance Win32_ComputerSystem
$boot = $os.LastBootUpTime
[pscustomobject]@{ ComputerName=$env:COMPUTERNAME; OS=$os.Caption; Version=$os.Version; Build=$os.BuildNumber; LastBoot=$boot; Uptime=(Get-Date)-$boot; Manufacturer=$cs.Manufacturer; Model=$cs.Model; TotalRAMGB=[math]::Round($cs.TotalPhysicalMemory/1GB,2); PowerShellVersion=$PSVersionTable.PSVersion.ToString() }
