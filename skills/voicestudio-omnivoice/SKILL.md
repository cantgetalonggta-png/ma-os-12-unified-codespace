---
name: voicestudio-omnivoice
description: Local VoiceStudio Electron / OmniVoice backend (v0.5.6). MCP at http://127.0.0.1:3900/mcp/. Public-record & operator audio only. Ask before model downloads.
---

# VoiceStudio / OmniVoice skill (operator)

## Device (this sandbox session)
- Debian 12 x86_64, 2 vCPU, ~4 GB RAM, **no GPU**, no full desktop libs (libgtk-3 missing)
- Electron GUI cannot launch here without GTK + display session
- **Backend verified**: `GET /health` → `{"status":"ok","device":"cpu","version":"0.5.6"}`

## Install artifacts on this host
- AppImage: `/root/VoiceStudio.AppImage` (SHA256 verified v0.5.6)
- Extracted: `/root/vs-extract/squashfs-root`
- Data home: `OMNIVOICE_HOME=/root/VoiceStudio`
- Backend start:
  ```bash
  cd /root/vs-extract/squashfs-root/resources
  ./tools/uv run uvicorn main:app --app-dir backend --host 127.0.0.1 --port 3900
  ```
- MCP: `http://127.0.0.1:3900/mcp/` (trailing slash)

## Rules (from upstream agent.md)
- Electron only (no Tauri)
- Ask before model downloads (state size + license)
- Cloud/analytics opt-in only
- CPU-only when no GPU

## Related operator links
- https://github.com/debpalash/VoiceStudio
- https://voicestudio.sh/models
- MCP docs: docs/mcp.md
- GHCR: ghcr.io/debpalash/voicestudio (Docker — needs Docker daemon; not available in this sandbox)

## Out of scope / external
- Nexus Skyrim mod 88326: game modding asset; not installed in this Linux sandbox
- aiartes.com/voiceai: third-party cloud voice UI — document only unless operator opts in
