# Project overview

## Scenario
An IT support analyst needs a quick, repeatable way to collect basic Windows endpoint diagnostic information before triage or escalation. This toolkit provides read-only checks and structured output.

## Workflow
1. Confirm authorization and scope.
2. Run only the checks relevant to the reported issue.
3. Review results locally and redact sensitive details before sharing.
4. Compare findings with approved tools and procedures.
5. Document findings in the ticket and escalate when required.

## Example triage
**Symptom:** A user reports poor performance and intermittent network access.

- Run `Get-SystemHealth.ps1` and `Get-ProcessTop.ps1` for basic resource context.
- Run `Get-DiskHealth.ps1` to check storage capacity.
- Run `Test-NetworkConnectivity.ps1` with an approved hostname.
- Run `Get-IPConfiguration.ps1` to inspect address and gateway configuration.
- Record relevant findings and avoid sharing personally identifiable or internal network details in public repositories.

## Limitations
These scripts are starter utilities, not a replacement for endpoint management, EDR, monitoring, or formal incident procedures. Results depend on permissions, OS version, and local configuration.
