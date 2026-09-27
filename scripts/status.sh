#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
python3 - <<'PY'
import json,urllib.request
c=json.load(open("catalog/REPOSITORIES.json"))
print("UNIFIED CATALOG", c["name"], "v"+c["version"])
print("prior codespace:", c["prior_codespace_hint"])
print("dual_tts:", c["dual_tts"])
print("--- repositories ---")
for r in c["repositories"]:
    flag="SUB" if r.get("submodule") else ("SEAL" if r.get("sealed") else r["visibility"][:3].upper())
    print(f"  [{flag:4}] {r['name']:40} {r['role'][:50]}")
for r in c["repositories"]:
    if r.get("deploy"):
        url=r["deploy"]
        try:
            req=urllib.request.Request(url, method="GET")
            with urllib.request.urlopen(req, timeout=8) as resp:
                print(f"  HEALTH {r['name']}: {resp.status}")
        except Exception as e:
            print(f"  HEALTH {r['name']}: {type(e).__name__}")
PY
