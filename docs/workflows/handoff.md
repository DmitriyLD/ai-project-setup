# HANDOFF Maintenance Workflow

## Purpose

HANDOFF is the working buffer that preserves continuation context between development sessions.

HANDOFF is not a strict permanent document. Its job is to keep the working context useful and factually correct so the next session or agent can continue without reconstructing everything from the repository.

This workflow is invoked automatically when the AGENTS.md test determines that HANDOFF requires update.

General principles (language, accuracy, minimal changes) are defined in AGENTS.md section 4.

## What HANDOFF must guarantee

- factual correctness of what is recorded;
- usefulness for continuing the current line of work;
- help for the next agent or session to pick up where work stopped.

## What HANDOFF does not guarantee

- normalized or polished wording;
- completeness;
- being a source of evidence for ARCHITECTURE or DECISIONS.

## Section guidance

### Current State

Describe the project's present state at a high level. Include only facts necessary to understand where development currently stands.

### Completed

Record implemented capabilities that remain relevant to continuation. Remove entries when they are no longer useful.

### Important Decisions

Record working signals about decisions that affect ongoing work. A decision does not need to exist in `docs/DECISIONS.md` for this section to mention it.

HANDOFF is not the canonical decision record. For important decisions that should be preserved permanently, see `docs/workflows/permanent-docs-sync.md`.

### Known Issues and Limitations

Record unresolved issues, blockers, limitations, or important technical debt that may affect future work. Include only observed or accepted issues. Remove items when they are resolved.

### Environment and Dependencies

Record environment requirements or dependencies that another agent needs in order to continue successfully.

Do not duplicate general setup documentation unless the information is essential for continuation.

### Current Focus

Describe the area or objective currently being worked on. Keep this section short.

### Next Recommended Step

Describe the most logical next task based on the current repository state. It should be actionable enough for another agent to continue without reconstructing the plan. Do not use this section as a long-term roadmap.

### Notes for the Next Agent

Record concise continuation context that is important for the next session, is not obvious from the repository, and does not belong more naturally in another project document. Avoid repeating information already maintained elsewhere.

## Key anti-patterns

HANDOFF is a current-state buffer, not an append-only history.

Avoid:
- using HANDOFF as a changelog;
- using HANDOFF as a task log;
- preserving obsolete information;
- recording facts that are not actually true.

Exact wording style is not a concern here. Wording may be rough as long as the content stays useful and factually correct.
