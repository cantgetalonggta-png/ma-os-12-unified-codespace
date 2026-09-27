# Full repository inventory — cantgetalonggta-png (2026-09-27)

Authenticated via GitHub connector. **19** repositories.

## Public (eligible for submodule under `modules/`)

| Repo | Role |
|------|------|
| [ma-os-12-console](https://github.com/cantgetalonggta-png/ma-os-12-console) | Investigation desk SPA |
| [live-online-agent-swarm](https://github.com/cantgetalonggta-png/live-online-agent-swarm) | Multi-agent swarm |
| [strand-osint-mesh](https://github.com/cantgetalonggta-png/strand-osint-mesh) | OSINT mesh |
| [strand-1953-trust-efta-ia-evidence](https://github.com/cantgetalonggta-png/strand-1953-trust-efta-ia-evidence) | Evidence vault |
| [detective-codex-vault](https://github.com/cantgetalonggta-png/detective-codex-vault) | Codex investigation vault |
| [meridian-drive-vault-atlas](https://github.com/cantgetalonggta-png/meridian-drive-vault-atlas) | 3D atlas |
| [truth-engine-integrity](https://github.com/cantgetalonggta-png/truth-engine-integrity) | Integrity / Graph RAG |
| [ECHO](https://github.com/cantgetalonggta-png/ECHO) | Ontological agent |
| [epstein-core-web-automation](https://github.com/cantgetalonggta-png/epstein-core-web-automation) | Research organizer |
| [mcp-stack-deploy](https://github.com/cantgetalonggta-png/mcp-stack-deploy) | MCP configs |
| [CodeSorcerer](https://github.com/cantgetalonggta-png/CodeSorcerer) | Agent framework |
| [vidmuse-space](https://github.com/cantgetalonggta-png/vidmuse-space) | HF Space |
| [ma-os-12-unified-codespace](https://github.com/cantgetalonggta-png/ma-os-12-unified-codespace) | **Monorepo root (this repo)** |

## Private / sealed (catalog only — never auto-cloned into this public tree)

| Repo | Note |
|------|------|
| api-keys-secret-store | Keys inventory — keep private |
| SOVEREIGN_UNIFIED_PLATFORM_2026-09-11 | Private monorepo |
| Sovereign_MultiAgent_Swarm_Backup_2026-09-11 | Swarm backup |
| FULL_WSL_MultiAgent_Framework_2026-09-11 | WSL framework |
| WSL_Agent_Stack_2026-09-11 | WSL stack |
| workspace-backup-2026-09-24 | Workspace backup |

## Open unified Codespace

1. https://github.com/cantgetalonggta-png/ma-os-12-unified-codespace → **Code → Codespaces → Create codespace on main**
2. Or CLI: `gh codespace create -r cantgetalonggta-png/ma-os-12-unified-codespace -b main`
3. Inside: `bash scripts/bootstrap.sh` (inits **public** submodules only)

Private repos stay on their own private Codespaces if needed; secrets never land in this tree.
