# Open-Source Use Policy — MA-OS-12

**Status:** Permanent · Committed 2026-09-27  
**Owner rule:** All open source SHALL be allowed to use as long as there are clear guidelines.

## Allowed

1. **License respected** (MIT, Apache-2.0, AGPL, BSD, etc. — attribution / share-alike as required).
2. **Purpose match** — use aligns with the project’s stated purpose (library, UI, MCP server, packaging, research client).
3. **Guidelines on record** — in-repo note of what is in-scope / out-of-scope.
4. **No secrets in tree** — keys only in private stores / Vercel env / operator console; never client bundles or public monorepo.
5. **Investigation claims** — public-record ceiling; SOLID / MAYBE tags; association ≠ guilt.

## Explicitly in scope for agents

- Public GitHub modules under `modules/` (see `.gitmodules`)
- Archive.org / Wayback / CDX / IA Scholar clients
- MCP servers configured via `mcp.json` + `inputs` for secrets
- Python packaging (Wheel, build backends, Core Metadata)
- VS Code / Copilot-style retrieval patterns over **operator-owned** evidence graphs
- Open-source proxy **projects** (e.g. Holy Unblocker family) as **study / link / optional local use on systems the operator administers**

## Out of scope for automated hourly agents

- Unauthorized access to third-party systems
- Exploit-style parameter fuzz / LFI-SQLi probe lists as default search targets
- “Identity burn” / residential proxy rotation framed as stealth against third parties
- Copying `api-keys-secret-store` or other private sealed repos into **public** trees

## Operator responsibility

Tools run on networks or machines the **operator administers** remain the operator’s responsibility (ToS, local policy). Automated MA-OS-12 agents stay on public-record research and lawful engineering.

## Cancel

Operator may supersede this file with an explicit commit. Dual-export cancel remains: `STOP EXPORT`.
