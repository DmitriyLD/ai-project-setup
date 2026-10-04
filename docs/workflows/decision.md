# Decision Recording Workflow

## Purpose

DECISIONS preserves important accepted technical and architectural decisions and their rationale.

This workflow is invoked when decision recording is explicitly required.

General principles (language, accuracy) are defined in AGENTS.md section 4.

## Decision format

### Decision ID

Use sequential identifiers: `DEC-001`, `DEC-002`, `DEC-003`.

Do not reuse identifiers.

### Status

Use one of the following statuses:
- `Accepted`
- `Superseded`

Do not silently rewrite historical decisions as if the previous choice never existed.

### Context

Describe the problem, constraint, or trade-off that required a decision.

Keep this section focused on why a decision was necessary.

### Decision

State the accepted choice clearly.

Describe what was decided, not the full implementation history.

### Rationale

Explain why the chosen option was preferred over relevant alternatives.

Include only rationale that is important for future understanding.

### Consequences

Record important effects of the decision, including when relevant:
- trade-offs;
- constraints introduced;
- known limitations;
- follow-up work;
- compatibility implications.

## Superseding a decision

When a decision is replaced:

1. Keep the original decision record.
2. Change its status to `Superseded`.
3. Reference the new decision that replaces it.
4. Add the new decision as a separate record.
5. Do not delete the historical rationale.

## Key anti-patterns

DECISIONS is a decision record, not a task log or changelog.

Avoid:
- using DECISIONS as a task log;
- using DECISIONS as a changelog.
