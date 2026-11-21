<# Read-only process inventory. CPUSeconds is cumulative CPU time, not instantaneous utilization. #>
[CmdletBinding()] param([ValidateRange(1,100)][int]$Top=15)
Get-Process -ErrorAction SilentlyContinue | Sort-Object CPU -Descending | Select-Object -First $Top Name,Id,@{N='CPUSeconds';E={[math]::Round($_.CPU,2)}},@{N='MemoryMB';E={[math]::Round($_.WorkingSet64/1MB,1)}}
