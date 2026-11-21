# PowerShell IT Support Toolkit

A beginner-friendly, read-only PowerShell toolkit for common Windows IT support and endpoint diagnostics. Built as a self-directed portfolio project for IT Support, Desktop Support, Service Desk and Endpoint Support roles.

> **Safety:** These scripts are designed for information gathering. They do not change system configuration, install software, delete data, or restart services. Run only on systems you own or are authorized to support. Some checks may require elevated permissions or may not be available on every Windows version.

## Toolkit

| Script | Purpose |
|---|---|
| `Get-SystemHealth.ps1` | OS, hostname, uptime, memory overview |
| `Get-DiskHealth.ps1` | Disk capacity and free space |
| `Get-InstalledSoftware.ps1` | Inventory installed applications (registry-based) |
| `Test-NetworkConnectivity.ps1` | Ping, DNS resolution and HTTPS reachability checks |
| `Get-WindowsServices.ps1` | List services and optionally filter by status |
| `Get-EventLogErrors.ps1` | Retrieve recent System/Application errors and warnings |
| `Get-IPConfiguration.ps1` | Network interfaces, IP, gateway and DNS configuration |
| `Get-ProcessTop.ps1` | Top processes by CPU-time proxy and memory use |
| `Get-WindowsUpdateStatus.ps1` | Show recent update history using Windows Update API |
| `Get-ComputerInfoSummary.ps1` | Compact computer-information report |

## Requirements
- Windows 10/11 or Windows Server (script-specific compatibility may vary)
- Windows PowerShell 5.1 or PowerShell 7
- No third-party modules required

## Run
1. Download or clone this repository.
2. Open PowerShell.
3. Change directory to `scripts`.
4. Run a script, for example:
   ```powershell
   .\Get-SystemHealth.ps1
   .\Get-DiskHealth.ps1
   .\Test-NetworkConnectivity.ps1 -Target example.com
   .\Get-EventLogErrors.ps1 -Hours 24
   ```
   If your execution policy blocks scripts, consult your organization's policy. Do not bypass organizational security controls.

## Output and examples
Sample outputs are illustrative and anonymized; they are not captured from a real company environment. See [`examples/`](examples/) and [`docs/`](docs/).

## Suggested validation
Test in a lab or on your own PC. Check outputs against Windows Settings, Task Manager, Event Viewer, and `ipconfig /all`. Note Windows version and any permission or API limitations.

## Portfolio learning goals
- Practice PowerShell scripting and structured output
- Build familiarity with Windows diagnostic tools
- Develop documentation and safe troubleshooting habits
- Explain the script logic and limitations in an interview

## Disclaimer
Independent learning project. Not affiliated with Microsoft or any employer. No real company data, credentials, devices, or internal configuration are included.
