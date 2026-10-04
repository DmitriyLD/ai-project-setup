# HANDOFF Maintenance Workflow

## Purpose

HANDOFF describes the state from which another development session or agent can continue.

This workflow is invoked automatically when the AGENTS.md test determines that HANDOFF requires update.

General principles (language, accuracy, minimal changes) are defined in AGENTS.md section 4.

## Section guidance

### Current State

Describe the project's present state at a high level.

Include only facts necessary to understand where development currently stands.

Do not repeat detailed implementation history.

### Completed

Record implemented capabilities that remain part of the current state and are relevant to continuation.

Prefer present-state wording over action-history wording.

Avoid phrasing such as "created", "moved", "updated", or "refactored" when the same fact can be stated as a current property of the project.

Do not use this section as a task log or changelog.

Remove entries when they are no longer useful for understanding the current state.

### Important Decisions

Summarize only important accepted decisions that materially affect ongoing work and are also recorded in `docs/DECISIONS.md`.

Keep entries concise and use them as pointers to relevant decision records rather than standalone rationale.

Leave this section empty when there are no recorded decisions that materially affect continuation.

### Known Issues and Limitations

Record unresolved issues, blockers, limitations, or important technical debt that may affect future work.

Include only observed or accepted issues.

Remove items when they are resolved.

### Environment and Dependencies

Record environment requirements or dependencies that another agent needs in order to continue successfully.

Examples include required runtime or tool versions, required services, important environment configuration, external dependencies, or known platform constraints.

Do not duplicate general setup documentation unless the information is essential for continuation.

### Current Focus

Describe the area or objective currently being worked on.

Keep this section short.

It should answer: What part of the project are we working on now?

### Next Recommended Step

Describe the most logical next task based on the current repository state.

It should be actionable and specific enough for another agent to continue without reconstructing the plan.

Do not use this section as a long-term roadmap.

### Notes for the Next Agent

Record concise continuation context that:
- is important for the next session;
- is not obvious from the repository;
- does not belong more naturally in another project document.

Avoid repeating information already maintained elsewhere.

## Key anti-patterns

HANDOFF is a current-state document, not an append-only history.

When information is no longer relevant to continuation: update it, replace it, or remove it.

Avoid:
- using HANDOFF as a changelog;
- using HANDOFF as a task log;
- action-history wording ("we created X") instead of present-state wording ("X exists");
- preserving obsolete information.
