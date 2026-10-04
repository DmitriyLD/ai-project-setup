# Documentation Maintainer Workflow

## Purpose

This workflow defines how an AI agent evaluates and maintains project documentation after completing a task.

Documentation updates are part of task completion when the completed task materially changes the project state.

The workflow must not create documentation changes mechanically after every edit.

## Documentation language

Project documentation does not have to use the same language as these agent instructions.

When project documentation is still empty or has no established language:

1. Inspect the existing human-facing project documentation, such as `README.md`.
2. Consider the language primarily used by the user for project work.
3. If one language is clearly established, use it for:
   - `docs/HANDOFF.md`
   - `docs/ARCHITECTURE.md`
   - `docs/DECISIONS.md`
4. If the language is ambiguous, propose one documentation language to the user before substantially populating these files.

Once a documentation language has been established, keep these documents consistent unless the user explicitly requests a change.

Do not switch languages between documentation updates without a clear reason.

Template comments, agent instructions, and workflow instructions may remain in English regardless of the selected project documentation language.

## 1. When to run this workflow

Run this workflow after a completed task when one or more of the following may have changed:

- implemented functionality;
- project architecture or structure;
- configuration;
- dependencies or environment requirements;
- important technical decisions;
- public interfaces, APIs, commands, or workflows;
- known issues or limitations;
- current development status;
- the recommended next step.

Do not run the full workflow for trivial changes such as:

- formatting;
- spelling corrections;
- comments with no behavioral impact;
- mechanical renames with no documentation impact;
- minor internal refactoring that does not change behavior, architecture, or project state.

When uncertain, evaluate documentation impact instead of updating files automatically.

## 2. Inspect the completed task

Review the actual repository changes.

Use the implementation, configuration, tests, and resulting diff as factual evidence.

Determine:

1. What changed?
2. What behavior or project state changed as a result?
3. Which documentation, if any, is now outdated or incomplete?
4. Would another agent misunderstand the repository if the documentation remained unchanged?

Do not rely only on the original task description.

The final repository state is the source of truth.

## 3. Identify affected documentation

Update only documentation directly affected by the task.

Use the following responsibility model.

### `docs/ARCHITECTURE.md`

Update when the task materially changes:

- system structure;
- major components;
- component responsibilities;
- important data flows;
- integrations;
- runtime relationships;
- architectural constraints.

Do not use this file for minor implementation details or temporary plans.

### `docs/DECISIONS.md`

Update when the task introduces, changes, or supersedes an important technical or architectural decision whose rationale should be preserved.

Record decisions, not routine implementation activity.

Do not create a decision entry for every coding choice.

### `docs/HANDOFF.md`

Update when the task materially changes the state another development session or agent needs in order to continue correctly.

Typical triggers include changes to:

- completed capabilities;
- current development status;
- project structure;
- important technical decisions;
- dependencies or environment requirements;
- known issues or limitations;
- unresolved blockers;
- recommended next step.

Do not treat HANDOFF as a changelog.

## 4. HANDOFF impact check

At the end of the documentation review, answer:

> Would the current `docs/HANDOFF.md` mislead the next agent about the current project state or continuation point?

If yes:

- update HANDOFF automatically;
- do not ask the user for permission;
- update only the sections affected by the completed task;
- preserve useful existing context that remains correct.

If no:

- leave HANDOFF unchanged.

Examples that normally require a HANDOFF update:

- a planned component was implemented;
- an important implementation attempt failed and created a known blocker;
- the next development step changed;
- a dependency or setup requirement changed;
- an architectural decision was accepted;
- previously documented current state is no longer true.

Examples that normally do not require a HANDOFF update:

- typo fixes;
- formatting;
- small refactoring with unchanged behavior;
- additional tests for already documented behavior;
- internal cleanup that does not affect continuation context.

## 5. HANDOFF section guidance

When updating `docs/HANDOFF.md`, use the sections as follows.

### Current State

Describe the project's present state at a high level.

Include only facts that are necessary to understand where development currently stands.

Do not repeat detailed implementation history.

### Completed

Record implemented capabilities, milestones, or project-level results that remain part of the project's current state and are relevant to continuation.

Describe what is now true about the project, not the sequence of actions performed in the most recent task.

Do not use this section as a task log or changelog.

Avoid entries that only report process activity, such as:
- documentation was updated;
- tests were run;
- files were refactored or moved;
- a minor implementation step was completed.

Include such details only when they materially affect what the next agent needs to understand about the current project state.

Remove entries when they are no longer useful for understanding the current state.

### Important Decisions

Summarize only important accepted decisions that materially affect ongoing work and are also recorded in docs/DECISIONS.md.

If a decision does not justify a separate record in docs/DECISIONS.md, do not list it here.

Keep entries concise and use them as pointers to relevant decision records rather than standalone rationale.

Do not duplicate full decision records here.

Leave this section empty when there are no recorded decisions that materially affect continuation.

### Known Issues and Limitations

Record unresolved issues, blockers, limitations, or important technical debt that may affect future work.

Include only observed or accepted issues.

Remove items when they are resolved.

### Environment and Dependencies

Record environment requirements or dependencies that another agent needs in order to continue successfully.

Examples include:

- required runtime or tool versions;
- required services;
- important environment configuration;
- external dependencies;
- known platform constraints.

Do not duplicate general setup documentation unless the information is essential for continuation.

### Current Focus

Describe the area or objective currently being worked on.

Keep this section short.

It should answer:

> What part of the project are we working on now?

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

HANDOFF is a current-state document, not an append-only history.

When information is no longer relevant to continuation:
- update it;
- replace it;
- or remove it.

## 6. ARCHITECTURE section guidance

When updating `docs/ARCHITECTURE.md`, use the sections as follows.

### Overview

Describe the system at a high level.

Explain what the project is and what architectural shape it currently has.

Keep this section concise.

### System Structure

Describe the major architectural parts of the application or system and how they relate to each other.

Focus on runtime structure, architectural boundaries, modules, services, and their relationships rather than on the repository as a whole.

Do not use this section as a generic repository tree.

Do not list support or documentation files such as `README.md`, `AGENTS.md`, or `docs/` unless they have architectural significance.

### Components

Describe the main components and their responsibilities.

Include only components that are architecturally relevant.

Do not list every module, file, or class.

### Data and Control Flow

Describe important flows of data or control through the system.

Include only flows necessary to understand how major parts interact.

Do not document trivial internal call chains.

### External Integrations

Describe external systems, services, APIs, platforms, or infrastructure that materially affect the architecture.

Include the role of each integration.

Do not list incidental tools that do not affect system design.

### Runtime and Deployment

Describe how the system runs in practice.

Include relevant runtime relationships, services, processes, containers, deployment units, or execution environments.

Do not turn this section into a full operations manual.

### Architectural Constraints

Record constraints that materially influence system design.

Examples include:

- required technologies;
- compatibility requirements;
- security boundaries;
- deployment restrictions;
- performance constraints;
- architectural rules that future changes must preserve.

Do not record temporary implementation preferences as architectural constraints.

### Known Architectural Limitations

Record known structural limitations, architectural debt, or constraints that may affect future development.

Include only limitations that are currently real and relevant.

Remove or update them when they are resolved.

ARCHITECTURE is a current-state document, not a design diary.

When the architecture changes:
- update the affected sections;
- remove obsolete descriptions;
- preserve unchanged information;
- do not append historical states.

## 7. DECISIONS section guidance

Use `docs/DECISIONS.md` to preserve important accepted technical and architectural decisions.

Create or update a decision record when:

- a non-trivial technical or architectural choice is accepted;
- multiple reasonable options existed and the chosen option affects future work;
- the rationale would be important for another agent or developer to understand later;
- an existing decision is replaced or materially changed.

Do not create decision records for:

- routine implementation choices;
- trivial refactoring;
- formatting or naming changes;
- temporary experiments;
- decisions whose rationale is obvious from the code and unlikely to matter later.

### Decision IDs

Use sequential identifiers:

- `DEC-001`
- `DEC-002`
- `DEC-003`

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

### Superseding a decision

When a decision is replaced:

1. Keep the original decision record.
2. Change its status to `Superseded`.
3. Reference the new decision that replaces it.
4. Add the new decision as a separate record.
5. Do not delete the historical rationale.

DECISIONS is a decision record, not a task log or changelog.

## 8. Accuracy rules

When updating documentation:

- describe only the repository state that actually exists;
- distinguish current implementation from future plans;
- do not claim that tests passed unless they were actually run successfully;
- do not invent commands, files, APIs, dependencies, or behavior;
- remove or correct statements made false by the completed task;
- preserve information that remains accurate;
- avoid duplicating large amounts of information between documents.

If documentation conflicts with the repository, resolve the conflict using repository state as factual evidence.

## 9. Minimal-change principle

Documentation maintenance should be proportional to the completed task.

Prefer:

- targeted edits;
- updating existing sections;
- removing obsolete statements.

Avoid:

- rewriting entire documents unnecessarily;
- reformatting unrelated sections;
- updating timestamps without substantive changes;
- expanding documentation beyond what is needed to represent the actual state.

## 10. Final verification

Before considering documentation maintenance complete:

1. Verify that updated documentation matches the final repository state.
2. Verify that no implemented functionality is described only as planned.
3. Verify that no planned functionality is described as implemented.
4. Verify that HANDOFF is accurate if the task changed continuation context.
5. Verify that unrelated documentation was not modified unnecessarily.

If no documentation required changes, leave the documentation tree untouched.
