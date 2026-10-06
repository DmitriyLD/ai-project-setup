# Permanent Documentation Sync Workflow

## Purpose

This workflow promotes verified information from the working context into strict permanent documentation.

Single responsibility: promote confirmed facts from `docs/HANDOFF.md` into `docs/ARCHITECTURE.md` and `docs/DECISIONS.md`, after verification against sources of truth.

This workflow is invoked EXPLICITLY only. It is never run automatically after a task.

## Sources and roles

- `docs/HANDOFF.md` — signal / candidate source. Not evidence.
- Repository state — evidence for architecture.
- Explicitly recorded decision context — evidence for decisions.
- `docs/ARCHITECTURE.md`, `docs/DECISIONS.md` — normalized strict documents.

## Procedure

1. Read `docs/HANDOFF.md`.
2. Read current `docs/ARCHITECTURE.md` and `docs/DECISIONS.md`.
3. Identify potential candidates for permanent documentation.
4. For architecture candidates: verify evidence in the repository (structure, code, configuration, runtime/deployment artifacts).
5. For decision candidates: verify that an explicit Decision AND an explicit Rationale are recorded in an available source (user decision, existing documentation, HANDOFF when the reason is actually written down, another project source).
6. Normalize confirmed information using `docs/workflows/architecture.md` and `docs/workflows/decision.md` as format and normalization rules.
7. Update only confirmed information.

## Admissibility rules

- Architecture candidates without verifiable repository evidence: skip. Leave in HANDOFF.
- Decision candidates without a confirmed Rationale: skip. Do not create a DECISIONS entry. Report the candidate as skipped due to missing confirmed rationale.
- Never transfer HANDOFF wording verbatim.
- Never invent Context, Rationale, Consequences, or alternatives.

## Scope of changes

This workflow may change ONLY:

- `docs/ARCHITECTURE.md`
- `docs/DECISIONS.md`

This workflow must NOT change:

- `docs/HANDOFF.md`
- code
- `README.md`
- `install.sh`
- any other files

## Key anti-patterns

- running this workflow automatically after tasks;
- treating HANDOFF as evidence;
- creating decision records without confirmed rationale;
- rewriting ARCHITECTURE or DECISIONS as a history log.
