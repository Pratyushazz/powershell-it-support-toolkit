<# Read-only network configuration summary. #>
[CmdletBinding()] param()
Get-NetIPConfiguration | Select-Object InterfaceAlias,InterfaceIndex,IPv4Address,IPv6Address,IPv4DefaultGateway,DNSServer
