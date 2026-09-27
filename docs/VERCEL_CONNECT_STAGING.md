# Configure Vercel Connect for staging — MA-OS-12

Two supported paths. Choose by plan.

## Path A — Custom environment `staging` (Pro / Enterprise)

Custom environments cannot be named `Production` or `Preview`.

### 1. Create the environment (dashboard or API)

Dashboard: Project → Settings → Environments → **Create Environment** → slug `staging`.

Optional: Branch Tracking on `staging`, attach domain, import vars from Preview.

API:

```bash
curl --request POST \
  --url "https://api.vercel.com/v9/projects/ma-os-12-portal/custom-environments?teamId=team_kgQcPVmumwtmK3MdAGlxKJtg" \
  --header "Authorization: Bearer $VERCEL_TOKEN" \
  --header "Content-Type: application/json" \
  --data '{"slug":"staging","description":"MA-OS-12 portal pre-prod"}'
```

### 2. Deploy to staging

```bash
vercel deploy --target=staging --scope echo-ec69
# or after link:
vercel deploy --target=staging
```

Assign a verified domain to the environment before relying on Connect triggers.

### 3. Scope Connect project link to staging only

Dashboard: Connector → Projects → link project → select **Custom Environment: staging** (not Production/Preview/Development).

CLI (replace connector id):

```bash
# Token access limited to staging
vercel connect attach <connector-uid> --project ma-os-12-portal --environment staging

# Optional: forward triggers into staging deployment path
vercel connect attach <connector-uid> --project ma-os-12-portal --environment staging \
  --triggers --trigger-environment staging --trigger-path /api/connect-events
```

Grok-side equivalent once projectId + connector id are known: `upsert_connector_project_connection` with `environments: ["env_<id>"]` (custom env stable id, not the string "staging").

### 4. Env vars for staging only

Use `customEnvironmentIds: ["env_..."]` when creating vars (SDK/API), or dashboard → staging environment variables. Do **not** put secrets in the static portal client.

---

## Path B — Preview branch staging (all plans, including Hobby)

No custom environment required.

1. Create git branch `staging`.
2. Project domain settings: add e.g. `staging-portal.yourdomain.com` → **Preview** → Git Branch **`staging`**.
3. Preview env vars: set branch-specific overrides for `staging` where needed.
4. Push to `staging` → Preview deployment; branch URL stays current.
5. Connect project link: enable **preview** (and optionally restrict trigger destination to branch `staging` when the UI/CLI supports branch destinations).

```bash
# Trigger destination example (branch form)
# vercel connect attach <uid> --project ma-os-12-portal --triggers \
#   --trigger-path /api/connect-events
# Then set destination branch=staging in dashboard if CLI flags differ by version
```

Merge `staging` → `main` for Production when ready.

---

## Recommended for MA-OS-12 today

| If team plan is… | Use |
|------------------|-----|
| Hobby | **Path B** (branch `staging` + Preview domain) |
| Pro / Enterprise | **Path A** (custom env `staging` + Connect scoped only to that env) |

## Portal note

Static `portal/` has no server routes by default. Connect **triggers** need an API route (e.g. on `ma-os-12-console` or a small serverless path). Scope Connect tokens to **staging/preview** so production does not receive experimental provider access.

## Blocker in Grok agent session

Connector still returns empty teams / 403 on scope `echo-ec69`. Live Create Environment + Connect attach must run after CLI login or Grok re-auth **with team echo-ec69 selected**.

Script: `bash scripts/configure_connect_staging.sh`
