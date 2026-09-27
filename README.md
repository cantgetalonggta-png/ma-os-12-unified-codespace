# MA-OS-12 UNIFIED CODESPACE

**Ontological monorepo** that catalogs and wires **every** operator GitHub repository into one Codespace-ready workspace.

| Field | Value |
|-------|--------|
| Owner | `cantgetalonggta-png` |
| Prior codespace hint | https://special-telegram-xrwr5r5rxgv42v4p4.github.dev/ |
| Dual TTS (locked) | **Rex** + **Helios** |
| Ceiling | Public-record only · Association ≠ guilt · **No secrets in tree** |

## What this combines

See [`catalog/REPOSITORIES.json`](catalog/REPOSITORIES.json).

- **Public repos** → optional git submodules under `modules/`
- **Private / sealed** (including `api-keys-secret-store`) → **catalog-only**, never submodule, never copied into this tree

## Open in Codespaces

1. Open this repo on GitHub → **Code → Codespaces → Create codespace on main**
2. Or: `gh codespace create -r cantgetalonggta-png/ma-os-12-unified-codespace -b main`
3. After start: `bash scripts/bootstrap.sh`

## Bootstrap

```bash
bash scripts/bootstrap.sh          # install tooling + init public submodules
bash scripts/status.sh             # print catalog + health URLs
```

## Portal

Static operator portal (Vercel-ready): `portal/` — links desk, bridge, strand, catalog.

## Directives

`directives/PERMANENT_DIRECTIVES.md` — dual export Rex+Helios until `STOP EXPORT`.

## Deployment automation

- GitHub Actions: `.github/workflows/deploy-portal.yml`
- Principles: reproducible build, health checks, no secrets baked in
