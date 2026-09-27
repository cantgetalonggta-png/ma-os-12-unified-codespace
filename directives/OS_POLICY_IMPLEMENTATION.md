# Open-Source Policy — Implementation map

How `OPEN_SOURCE_USE_POLICY.md` is enforced across the stack.

## Layers

| Layer | Mechanism |
|-------|-----------|
| **Git** | Public repos only in `.gitmodules`; private sealed listed in `catalog/REPO_INVENTORY.md` |
| **Bootstrap** | `scripts/bootstrap.sh` inits public submodules only |
| **Agents** | `AGENTS.md` on `ma-os-12-console`; this file + policy in `directives/` |
| **SPA** | `VITE_PUBLIC_*` only; no secret keys in client |
| **MCP** | `mcp.json` `inputs` for secrets; tools public-record scoped |
| **Quarantine** | Workspace `EXPANSION_ENGINE/quarantine/` for probe dumps / evasion scripts |
| **Drive audio** | `MA-OS-12-AUDIO` folder permanent archive |
| **Hourly agents** | Legal dorking skills only; no Generated0-style payloads |

## Onboarding a new open-source dependency

1. Confirm license (SPDX if possible).
2. Add one-line purpose note in PR / commit message.
3. If submodule: public URL only under `modules/`.
4. If npm/pip: pin version; no postinstall that phones home with secrets.
5. Document out-of-scope misuse in `docs/` if the tool has dual-use reputation.

## Checklist (CI / human)

- [ ] No files matching secret patterns committed
- [ ] No private submodule URLs in `.gitmodules`
- [ ] Client env is public-only
- [ ] New OS lib has license + purpose note

## Owner override

Operator may widen local use on systems they administer; automated agents stay within this map.
