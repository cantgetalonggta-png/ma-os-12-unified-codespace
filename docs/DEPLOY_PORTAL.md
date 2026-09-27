# Deploy portal — operator CLI

See also: [VERCEL_ENVIRONMENTS.md](./VERCEL_ENVIRONMENTS.md) (Local / Preview / Production).

## Prerequisite

Vercel CLI or connector with team **echo-ec69**.

## One-shot production

```bash
export VERCEL_TEAM_SLUG=echo-ec69
export VERCEL_PROJECT_NAME=ma-os-12-portal
bash scripts/deploy_portal.sh
```

## Dashboard

1. Import `cantgetalonggta-png/ma-os-12-unified-codespace`
2. Root Directory: **`portal`**
3. Deploy (first deploy = Production per Vercel rules)

## Environments workflow

| Goal | Action |
|------|--------|
| Local | `vercel link` + `vercel env pull` |
| Preview QA | push non-`main` branch or `vercel` without `--prod` |
| Production | merge to `main` or `vercel --prod` |
| Optional staging | `staging` branch + Preview domain, or custom env on Pro |

## Existing desk SPA

https://ma-os-12-console-echo-ec69.vercel.app (separate project; not rootDirectory `portal`)
