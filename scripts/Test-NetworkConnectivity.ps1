<# Read-only network test: DNS, ping and TCP 443. #>
[CmdletBinding()] param([string]$Target='www.microsoft.com')
$dnsResult=$null; $dnsError=$null
try{$dnsResult=Resolve-DnsName $Target -ErrorAction Stop | Select-Object -First 3 Name,Type,IPAddress}catch{$dnsError=$_.Exception.Message}
$ping=Test-Connection -ComputerName $Target -Count 2 -Quiet -ErrorAction SilentlyContinue
$tcp=$null; try{$tcp=Test-NetConnection -ComputerName $Target -Port 443 -InformationLevel Quiet -WarningAction SilentlyContinue}catch{}
[pscustomobject]@{Target=$Target;DNSResolved=!!$dnsResult;DNSResults=$dnsResult;DNSError=$dnsError;PingSucceeded=[bool]$ping;TCP443Succeeded=[bool]$tcp;CheckedAt=Get-Date}
