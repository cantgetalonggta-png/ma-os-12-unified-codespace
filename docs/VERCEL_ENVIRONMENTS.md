# Vercel environments → MA-OS-12 portal

Source: Vercel docs Deployments → Environments (Local, Preview, Production; custom on Pro/Enterprise).

## Defaults

| Environment | When | MA-OS-12 use |
|-------------|------|----------------|
| **Local** | Dev on machine | `vercel link` + `vercel env pull` → `.env.local` (never commit secrets) |
| **Preview** | Non-production branch, PR, or `vercel` without `--prod` | QA portal changes on a branch URL before promoting |
| **Production** | `main` push after first deploy, or `vercel --prod` | Live operator portal domain |

**First deployment of a new project is always Production** (even without `--prod`). After that, the rules above apply.

## Portal project settings

- Repo: `cantgetalonggta-png/ma-os-12-unified-codespace`
- **Root Directory:** `portal`
- Framework: Other / static (`portal/vercel.json`)
- Public env only if needed (no API secrets in static HTML)

## Staging options (from docs)

1. **Preview branch** (all plans): branch `staging` + domain assigned to Preview/Git branch `staging`.
2. **Custom environment** (Pro/Enterprise): named `staging`, branch tracking, own vars/domain.
3. **Staged production**: disable auto-assign production domains, verify URL, then promote.

Hobby-friendly path for this portal: use **Preview** on a `staging` branch; merge to `main` for Production.

## CLI cheatsheet

```bash
npm i -g vercel   # or npx vercel@latest
vercel link --scope echo-ec69 --project ma-os-12-portal
vercel env pull   # Local only; gitignore .env.local
vercel            # Preview (after first production exists)
vercel --prod     # Production
# Pro+: vercel deploy --target=staging
```

Script: `bash scripts/deploy_portal.sh` (production-oriented).

## Connector note

Grok Vercel connector must include team scope **echo-ec69**. Empty teams / 403 on that scope blocks agent-side project create until re-auth grants the team.
