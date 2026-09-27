#!/usr/bin/env bash
# Configure staging environment + optional Vercel Connect scope (operator CLI)
# Requires: vercel logged in with team access (echo-ec69)
set -euo pipefail

TEAM="${VERCEL_TEAM_SLUG:-echo-ec69}"
PROJECT="${VERCEL_PROJECT_NAME:-ma-os-12-portal}"
CONNECTOR="${VERCEL_CONNECT_UID:-}"  # e.g. slack/my-bot or scl_...
MODE="${STAGING_MODE:-preview-branch}"  # preview-branch | custom-env

echo "[1] whoami / scope $TEAM"
npx vercel@latest whoami

echo "[2] link project $PROJECT"
npx vercel@latest link --yes --scope "$TEAM" --project "$PROJECT" || true

if [[ "$MODE" == "custom-env" ]]; then
  echo "[3] custom environment staging (Pro+) — create if missing via dashboard/API"
  echo "    Then: vercel deploy --target=staging --scope $TEAM"
  if [[ -n "$CONNECTOR" ]]; then
    echo "[4] Connect attach scoped to staging"
    npx vercel@latest connect attach "$CONNECTOR" --project "$PROJECT" --environment staging || true
    echo "    Optional triggers:"
    echo "    vercel connect attach $CONNECTOR --project $PROJECT --environment staging --triggers --trigger-environment staging --trigger-path /api/connect-events"
  fi
else
  echo "[3] Hobby path: use git branch staging + Preview domain assignment in dashboard"
  echo "    git checkout -b staging && git push -u origin staging"
  echo "    Domain → Preview → Git Branch = staging"
  if [[ -n "$CONNECTOR" ]]; then
    echo "[4] Connect: enable preview on project link (dashboard) for $CONNECTOR"
    npx vercel@latest connect attach "$CONNECTOR" --project "$PROJECT" --environment preview || true
  fi
fi

echo "[done] See docs/VERCEL_CONNECT_STAGING.md"
