# MA-OS-12 UNIFIED CODESPACE

**Ontological monorepo** for every repo under `cantgetalonggta-png` that is safe to combine in one Codespace.

| Field | Value |
|-------|--------|
| Owner | `cantgetalonggta-png` |
| Catalog | [`catalog/REPO_INVENTORY.md`](catalog/REPO_INVENTORY.md) · [`catalog/REPOSITORIES.json`](catalog/REPOSITORIES.json) |
| Ceiling | Public-record · Association ≠ guilt · **No secrets in tree** |
| Submodules | Public investigation / swarm / MCP / desk only |

## Account inventory (19 repos)

- **13 public** → listed in `.gitmodules` under `modules/` (optional clone)
- **6 private** → **catalog-only** (including `api-keys-secret-store`) — never submodule, never copied here

## Open Codespace (required operator click)

GitHub does not allow a third party to force-create a Codespace on your account without you. Use one of:

1. **UI:** [Create codespace on this repo](https://github.com/codespaces/new?hide_repo_select=true&repo=cantgetalonggta-png/ma-os-12-unified-codespace)
2. **CLI:** `gh codespace create -r cantgetalonggta-png/ma-os-12-unified-codespace -b main`
3. Repo page → **Code → Codespaces → Create codespace on main**

After start:

```bash
bash scripts/bootstrap.sh   # tooling + public submodules
bash scripts/status.sh      # health + URLs
```

## What is intentionally excluded

- Private key stores and private backups (see inventory)
- Offensive dork / evasion tooling (desk quarantine policy)
- Any material that would put secrets into a public monorepo

## Related live surfaces

- Desk: often `ma-os-12-console` on Vercel
- Strand: `strand-osint-mesh` homepage when deployed

## Directives

See `directives/` and operator MEMORYCORE. Cancel dual-export: `STOP EXPORT`.
