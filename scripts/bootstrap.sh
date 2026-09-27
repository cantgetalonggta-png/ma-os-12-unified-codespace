#!/usr/bin/env bash
# Public submodules only — never clone sealed private key stores
set -euo pipefail
echo "[MA-OS-12] bootstrap — public modules only"
if [[ -f .gitmodules ]]; then
  git submodule sync --recursive || true
  git submodule update --init --recursive || true
fi
echo "[MA-OS-12] See catalog/REPO_INVENTORY.md for private sealed list (not cloned)."
echo "[MA-OS-12] Policy: directives/OPEN_SOURCE_USE_POLICY.md"
echo "[MA-OS-12] bootstrap done"
