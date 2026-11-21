<# Read-only service listing. #>
[CmdletBinding()] param([ValidateSet('All','Running','Stopped')][string]$Status='All')
$services=Get-Service
if($Status -ne 'All'){$services=$services | Where-Object Status -eq $Status}
$services | Sort-Object Status,DisplayName | Select-Object Name,DisplayName,Status,StartType
