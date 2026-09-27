#!/usr/bin/env bash
# Full deployment CLI for MA-OS-12 operator portal (static)
# Requires: vercel CLI logged in with access to team echo-ec69 (or your team slug)
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PORTAL="$ROOT/portal"
TEAM_SLUG="${VERCEL_TEAM_SLUG:-echo-ec69}"
PROJECT_NAME="${VERCEL_PROJECT_NAME:-ma-os-12-portal}"

echo "[PortalBuilder] portal dir: $PORTAL"
test -f "$PORTAL/index.html"
test -f "$PORTAL/vercel.json" || echo '{"cleanUrls":true}' > "$PORTAL/vercel.json"

echo "[VercelLink] whoami"
npx vercel@latest whoami || { echo "Login required: npx vercel login"; exit 1; }

echo "[VercelLink] link project rootDirectory=portal"
cd "$ROOT"
npx vercel@latest link --yes --scope "$TEAM_SLUG" --project "$PROJECT_NAME" || true

echo "[Deploy] production deploy from portal/"
cd "$PORTAL"
npx vercel@latest deploy --prod --yes --scope "$TEAM_SLUG" | tee /tmp/ma-os-12-portal-deploy.log
echo "[Deploy] done — check URL in log above"
