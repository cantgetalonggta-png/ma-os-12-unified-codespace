#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
echo "[bootstrap] MA-OS-12 unified codespace"
git submodule update --init --recursive 2>/dev/null || echo "[bootstrap] submodules optional / not yet populated"
command -v node >/dev/null && node -v
command -v python3 >/dev/null && python3 -V
command -v gh >/dev/null && gh auth status 2>/dev/null || true
echo "[bootstrap] catalog repos: $(python3 -c 'import json;print(len(json.load(open(\"catalog/REPOSITORIES.json\"))[\"repositories\"]))')"
echo "[bootstrap] done — run scripts/status.sh"
