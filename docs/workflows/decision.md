# Decision Recording Workflow

## Purpose

DECISIONS is a strict permanent register. It records important accepted technical and architectural decisions and their confirmed rationale.

This workflow is invoked explicitly, when decision recording is explicitly required, or as part of `docs/workflows/permanent-docs-sync.md`.

General principles (language, accuracy) are defined in AGENTS.md section 4.

## Source rules

Each substantial statement in a decision record must have a confirmed source.

- Context, Decision, Rationale, Consequences, and alternatives must come from explicitly recorded decision context: a user decision, existing documentation, `docs/HANDOFF.md` when the reason is actually written down, or another available project source.
- Rationale must never be reconstructed, guessed, or inferred to sound reasonable.
- When Rationale is explicitly absent: the record is not created through the permanent-docs-sync workflow. The candidate stays in HANDOFF and is reported as skipped due to missing confirmed rationale.
- Consequences must be confirmed effects, not hypothetical ones.

`docs/HANDOFF.md` is a candidate source, not an automatic evidence source. It can supply Rationale only when the reason is actually written there.

## Decision format

### Decision ID

Use sequential identifiers: `DEC-001`, `DEC-002`, `DEC-003`. Do not reuse identifiers.

### Status

Use one of the following statuses:
- `Accepted`
- `Superseded`

Do not silently rewrite historical decisions as if the previous choice never existed.

### Context

Describe the problem, constraint, or trade-off that required a decision, based on recorded sources. Keep this section focused on why a decision was necessary.

### Decision

State the accepted choice clearly. Describe what was decided, not the full implementation history.

### Rationale

Explain why the chosen option was preferred over relevant alternatives, using only explicitly recorded reasoning. Include only rationale that is important for future understanding. If the reasoning was not recorded, leave this record out rather than writing plausible-sounding text.

### Consequences

Record important confirmed effects of the decision, including when relevant:
- trade-offs;
- constraints introduced;
- known limitations;
- follow-up work;
- compatibility implications.

Do not record hypothetical or speculative consequences.

## Superseding a decision

When a decision is replaced:

1. Keep the original decision record.
2. Change its status to `Superseded`.
3. Reference the new decision that replaces it.
4. Add the new decision as a separate record.
5. Do not delete the historical rationale.

## Key anti-patterns

DECISIONS is a strict decision record, not a task log or changelog.

Avoid:
- using DECISIONS as a task log;
- using DECISIONS as a changelog;
- inventing Context, Rationale, Consequences, or alternatives;
- creating records for decisions whose rationale was never recorded.
