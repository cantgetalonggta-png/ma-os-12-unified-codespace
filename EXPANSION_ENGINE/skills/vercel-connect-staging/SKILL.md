---
name: vercel-connect-staging
description: Configure Vercel Connect scoped to staging custom env (Pro+) or Preview branch staging (Hobby). Triggers include Vercel Connect staging, configure connect, staging environment.
version: 1.0
id: S53
---

# vercel-connect-staging

## Path A (Pro+)

Custom env `staging` → `vercel deploy --target=staging` → `vercel connect attach <uid> --environment staging`

## Path B (Hobby)

Branch `staging` + domain on Preview → Connect on preview

## MA-OS-12

Scripts: scripts/configure_connect_staging.sh · docs/VERCEL_CONNECT_STAGING.md · team often echo-ec69 · portal rootDirectory=portal

Re-auth connector with team scope if 403.
