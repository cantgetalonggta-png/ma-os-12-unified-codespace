# Recommendations backlog — accepted for execution

Committed 2026-09-27. Operator ordered: commit all OS policy + all other suggestions.

| ID | Recommendation | Status |
|----|----------------|--------|
| R1 | Commit `OPEN_SOURCE_USE_POLICY.md` | DONE (this commit) |
| R2 | Full 19-repo catalog in unified codespace | DONE |
| R3 | Public-only submodules; private sealed catalog-only | DONE |
| R4 | Never submodule `api-keys-secret-store` into public tree | DONE (policy) |
| R5 | Codespace open is operator one-click (`gh codespace create` / UI) | DOCUMENTED |
| R6 | `bash scripts/bootstrap.sh` after Codespace start | DOCUMENTED |
| R7 | Vite SPA: only `VITE_PUBLIC_*` non-secrets in client | ENFORCED in desk policy |
| R8 | Ollama context ≥64k for agentic local work when VRAM allows | SKILL |
| R9 | MCP: secrets via `inputs` / env, not hard-coded | SKILL |
| R10 | Quarantine Generated0 / generated_dorks / ghost_rotate from live agents | QUARANTINE |
| R11 | Legal dorking only via dorking-mastery (gov/archive/scholarly) | POLICY |
| R12 | Dual hourly automations + TeacherUplink ×5 | RUNNING (operator tasks) |
| R13 | Audio briefings permanently uploaded to Google Drive | THIS CYCLE |
| R14 | Optional: AGENTS.md at console repo root (public-record + no client secrets) | OPEN |
| R15 | Optional: Vercel portal root = `portal/` on unified codespace | OPEN |
| R16 | Optional: expand any CONV0x MP3 to 10-minute panel on request | OPEN |

## Next open items (operator pick)

- **A** — Write root `AGENTS.md` for `ma-os-12-console`
- **B** — Point Vercel project at unified `portal/`
- **C** — Expand selected audio briefings to 10 minutes
