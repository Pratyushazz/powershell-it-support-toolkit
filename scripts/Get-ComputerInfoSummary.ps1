<# Read-only compact computer information summary. #>
[CmdletBinding()] param()
Get-ComputerInfo | Select-Object CsName,WindowsProductName,WindowsVersion,OsBuildNumber,OsArchitecture,CsManufacturer,CsModel,BiosVersion,TimeZone,HyperVisorPresent
