---
name: skill-creator
description: Create and update agent skills that extend capabilities. Use when the user wants a new skill, update an existing skill, or asks about skill format. Triggers include create a skill, make a skill for, new skill, update this skill, skill format, skill-creator, SKILL-SEEKERS, SKILL-DISTILLER.
version: 2.0
id: S51
---

# skill-creator

## Purpose

Author production-ready agent skills as folder packages with `SKILL.md` frontmatter + body. Distill methods from docs/PDFs/code into reusable, lawful, registry-linked skills. Evolve existing skills without breaking triggers.

## When to activate

- User says `/skill-creator`, create skill, new skill, update skill, skill format
- Distill batches produce new methods that need permanent SKILL.md packages
- TeacherUplink ×5 shares advanced techniques that should become skills
- code-evolution identifies a reusable procedure that belongs outside one-off scripts

## Skill package layout

```
skills/<skill-slug>/
  SKILL.md          # required
  scripts/          # optional
  references/       # optional
  assets/           # optional
```

### Frontmatter

```yaml
---
name: kebab-case-name
description: What it does + when to use + trigger phrases
version: 1.0
id: SNN
---
```

## Creation procedure (code-evolution safe)

1. Characterize problem and out-of-scope
2. Name kebab-case unique under EXPANSION_ENGINE/skills/
3. Description with trigger phrases
4. Write SKILL.md — no secrets; public-record ceiling
5. Register in SKILLS_*_REGISTRY
6. Cross-link related skills
7. Validate (no exploit dumps; association≠guilt)
8. Commit reviewable; push monorepo if connected

## Distill path

Ingest public docs → extract SOLID/MAYBE methods → quarantine offensive patterns → emit SKILL.md → TeacherUplink ×5

## Anti-patterns

- No secrets; no unauthorized access; no CSAM
- Do not promote operator notes to fake SOLID exhibits
- Do not recycle monologue without method delta

## Cross-skill links

skill-distiller, skill-seekers, code-evolution-safe-loop, evolutionary-growth-loop, tool-registry-maintain, open-source-policy-gate

## Learning rate

Elite TeacherUplink ×5 when broadcasting this skill.
