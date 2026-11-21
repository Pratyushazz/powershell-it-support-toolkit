<# Read-only recent System and Application warnings/errors. #>
[CmdletBinding()] param([ValidateRange(1,720)][int]$Hours=24,[ValidateRange(1,500)][int]$MaxEvents=100)
$since=(Get-Date).AddHours(-$Hours)
foreach($log in 'System','Application'){try{Get-WinEvent -FilterHashtable @{LogName=$log;Level=2,3;StartTime=$since} -MaxEvents $MaxEvents -ErrorAction Stop | Select-Object @{N='Log';E={$log}},TimeCreated,LevelDisplayName,ProviderName,Id,Message}catch{Write-Warning "Unable to query $log log: $($_.Exception.Message)"}}
