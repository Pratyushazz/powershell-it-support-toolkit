# Microsoft Intune Endpoint Management Lab

A self-directed, documentation-led lab plan for practicing Microsoft Intune endpoint administration concepts. This repository uses example policies, checklists, fictional device scenarios and validation notes. **It does not claim that policies have been deployed to a live tenant.** Update the validation log only after performing the lab hands-on.

## Lab objectives
- Understand device enrollment approaches and prerequisites.
- Design Windows configuration profiles.
- Define compliance policy scenarios and remediation guidance.
- Plan app deployment and update rings.
- Document device lifecycle and troubleshooting.
- Practice ticket and change documentation.

## Suggested lab setup
- Microsoft Intune trial or appropriately licensed test tenant (availability/licensing may vary).
- One disposable test Windows device or VM.
- Test-only account and device; avoid personal/company data.
- Read Microsoft's official documentation before performing changes.

## Scenarios
1. Enrollment and device inventory
2. Configuration profile planning
3. Compliance policy and conditional-access concept (do not enable CA without appropriate test setup)
4. Application deployment test
5. Windows update ring
6. Device retire / wipe / delete distinctions and lifecycle
7. Troubleshooting and ticket documentation

See `docs/` for scenario guides, checklists and sample policies. `samples/` contains illustrative policy notes, not import-ready Intune objects.
