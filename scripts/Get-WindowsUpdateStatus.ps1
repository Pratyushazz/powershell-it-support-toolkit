<# Read-only recent Windows update history via Windows Update COM API. #>
[CmdletBinding()] param([ValidateRange(1,100)][int]$Count=20)
try{$session=New-Object -ComObject Microsoft.Update.Session;$searcher=$session.CreateUpdateSearcher();$total=$searcher.GetTotalHistoryCount();if($total -gt 0){$searcher.QueryHistory(0,[math]::Min($Count,$total)) | Select-Object Date,Title,ResultCode,SupportUrl}}catch{Write-Warning "Update history query failed: $($_.Exception.Message)"}
