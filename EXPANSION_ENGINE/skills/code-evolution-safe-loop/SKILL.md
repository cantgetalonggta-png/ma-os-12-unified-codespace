---
name: code-evolution-safe-loop
description: Systematic safe improvement of codebases and skill packages. Use for refactoring, dependency upgrades, architectural migration, test growth, skill evolution. Triggers include code-evolution, evolve code, refactor safely, skill evolution.
version: 2.0
id: S52
---

# code-evolution-safe-loop

## Purpose

Evolve code and skills in small, reversible, measured steps. Preserve behavior unless change is intentional.

## Loop

1. Characterize behavior
2. State goal
3. Smallest change
4. Re-test / smoke
5. Measure delta
6. Commit or roll back

## Safety

- Never mix pure refactor with feature in one commit
- Public-record ceiling; no client secrets (VITE_PUBLIC only)
- Skills under EXPANSION_ENGINE/skills/

## Cross-skill links

skill-creator, deployment-automation, vercel-public-front-door, vercel-connect-staging, open-source-policy-gate
