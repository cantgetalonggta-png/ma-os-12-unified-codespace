# Deploy portal — operator CLI

## Prerequisite

Vercel connector / CLI must have scope **echo-ec69** (or your team).

If Grok connector returns 403 on that scope: reconnect Vercel in Grok, then re-run.

## One-shot

```bash
bash scripts/deploy_portal.sh
```

Env overrides:

```bash
export VERCEL_TEAM_SLUG=echo-ec69
export VERCEL_PROJECT_NAME=ma-os-12-portal
bash scripts/deploy_portal.sh
```

## Manual dashboard

1. https://vercel.com/new
2. Import `cantgetalonggta-png/ma-os-12-unified-codespace`
3. **Root Directory:** `portal`
4. Framework: Other / static
5. Deploy

## Existing console

Desk SPA remains: https://ma-os-12-console-echo-ec69.vercel.app
