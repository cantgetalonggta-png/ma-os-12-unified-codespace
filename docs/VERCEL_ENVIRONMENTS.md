# Vercel environments → MA-OS-12 portal

Source: Vercel Deployments → Environments + Connect project links.

## Defaults

| Environment | When | MA-OS-12 use |
|-------------|------|----------------|
| **Local** | Dev machine | `vercel link` + `vercel env pull` → `.env.local` |
| **Preview** | Non-main branch / PR / `vercel` | QA; **Hobby staging** via branch `staging` |
| **Production** | main / `vercel --prod` | Live portal |
| **Custom `staging`** | Pro/Enterprise | Named env + Connect scoped only here |

First deployment of a **new** project is always Production.

## Connect for staging

Full guide: [VERCEL_CONNECT_STAGING.md](./VERCEL_CONNECT_STAGING.md)

- **Pro+:** custom env `staging` → `vercel connect attach <uid> --environment staging`
- **Hobby:** Preview + branch `staging`; Connect on `preview`

## Portal project

- Repo: `cantgetalonggta-png/ma-os-12-unified-codespace`
- Root Directory: `portal`
- Script: `scripts/deploy_portal.sh` / `scripts/configure_connect_staging.sh`
