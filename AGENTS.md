# Project Agent Instructions

## Purpose

This file defines the permanent rules for AI agents working in this repository.

The agent is responsible not only for implementing changes, but also for keeping the repository state understandable and consistent for future work.

Detailed project knowledge and workflows live in `docs/`.

## 1. Before starting a task

Before making substantial changes:

1. Inspect the relevant repository structure and files.
2. Read the documentation necessary to understand the current project state.
3. Check `docs/HANDOFF.md` when the task depends on previous work or current project status.
4. Check `docs/ARCHITECTURE.md` before making architectural or structural changes.
5. Check `docs/DECISIONS.md` when an existing technical decision may affect the task.

Do not modify files before understanding the relevant context.

## 2. Implementation rules

While working:

- follow the existing project architecture and conventions;
- prefer the smallest change that fully solves the task;
- do not introduce unnecessary abstractions, dependencies, files, or tooling;
- do not silently change project scope;
- do not describe planned functionality as implemented;
- do not assume that documentation is correct when repository state proves otherwise;
- do not rewrite unrelated code or documentation unless required by the task;
- preserve existing user changes unless modification is necessary for the requested task.

If repository state conflicts with documentation, treat the implementation as factual evidence and resolve the inconsistency when it is relevant to the task.

## 3. Task completion

A task is complete only when:

1. The requested implementation is finished.
2. Relevant tests, checks, or validation have been performed.
3. The resulting changes have been reviewed.
4. HANDOFF checked according to section 5.
5. Documentation explicitly required by the task or an invoked workflow has been updated.

Do not perform documentation updates mechanically after every small change.

## 4. Documentation maintenance

Documentation is part of the project state.

### Language policy

Project documentation does not have to use the same language as these agent instructions.

When project documentation is still empty or has no established language:

1. Inspect the existing human-facing project documentation, such as `README.md`.
2. Consider the language primarily used by the user for project work.
3. If one language is clearly established, use it for `docs/HANDOFF.md`, `docs/ARCHITECTURE.md`, and `docs/DECISIONS.md`.
4. If the language is ambiguous, propose one documentation language to the user before substantially populating these files.

Once a documentation language has been established, keep these documents consistent unless the user explicitly requests a change.

Do not switch languages between documentation updates without a clear reason.

Template comments, agent instructions, and workflow instructions may remain in English regardless of the selected project documentation language.

### General principles

- Repository state is source of truth.
- Document only what actually exists.
- Never invent commands, files, APIs, components, or behavior.
- Distinguish current implementation from future plans.
- Prefer targeted edits over wholesale rewrites.
- Update only documentation explicitly required by the task or an invoked workflow.

### Documentation workflows

Use workflows:
- `docs/workflows/handoff.md` — to update HANDOFF
- `docs/workflows/architecture.md` — to synchronize ARCHITECTURE
- `docs/workflows/decision.md` — to record a decision

## 5. HANDOFF policy

`docs/HANDOFF.md` describes the state from which another development session or agent should be able to continue.

After completing a task, apply the test:

> Would the current `docs/HANDOFF.md` mislead the next agent about the current project state or continuation point?

If yes:
- use `docs/workflows/handoff.md` to update HANDOFF
- do not ask the user for permission

If no:
- leave HANDOFF unchanged

## 6. Sources of truth

Use the following responsibility model:

- `AGENTS.md` — permanent agent rules;
- `docs/ARCHITECTURE.md` — current project architecture;
- `docs/DECISIONS.md` — important accepted decisions and their rationale;
- `docs/HANDOFF.md` — current project state and continuation point;
- `docs/workflows/` — detailed reusable project workflows;
- repository code and configuration — factual implementation state.

Do not duplicate large sections of information between these files.

Each piece of information should have one primary home.

## 7. Scope and autonomy

Perform the requested task without expanding its scope unnecessarily.

The agent may independently:

- inspect relevant files;
- run appropriate checks;
- update directly affected documentation;
- update HANDOFF when required by the rules above.

The agent should request user input only when a decision genuinely requires product, business, or design intent that cannot be derived from the repository or existing instructions.

Routine documentation maintenance does not require user approval.

## 8. Project-specific instructions

Project-specific rules may extend this file but should not duplicate the general rules above.

Keep permanent instructions concise.

Detailed procedures belong in `docs/workflows/`.
