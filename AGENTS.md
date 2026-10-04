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

A task is complete only when applicable:

1. The requested implementation is finished.
2. Relevant tests, checks, or validation have been performed.
3. The resulting changes have been reviewed.
4. Documentation impact has been evaluated.
5. Relevant documentation has been updated when necessary.
6. `docs/HANDOFF.md` accurately reflects the project state when the task materially changed it.

Do not perform documentation updates mechanically after every small change.

## 4. Documentation maintenance

Documentation is part of the project state.

Use the established project documentation language for human-facing documentation.

If no documentation language has been established yet, follow the documentation workflow to determine it.

At the end of a completed task, evaluate whether the changes affect project documentation.

Use:

`docs/workflows/documentation-maintainer.md`

for the detailed documentation maintenance process.

Update only documentation affected by the completed task.

Do not modify documentation merely to create activity or keep timestamps current.

## 5. HANDOFF policy

`docs/HANDOFF.md` describes the state from which another development session or agent should be able to continue.

At the end of a completed task, determine whether the task materially changed that state.

Update `docs/HANDOFF.md` automatically when necessary.

Do not ask the user whether HANDOFF should be updated.

HANDOFF should normally be updated when the task changes one or more of the following:

- implemented capabilities;
- project architecture or structure;
- important technical decisions;
- dependencies or environment requirements;
- known issues or limitations;
- current development status;
- the recommended next step.

Do not update HANDOFF for minor edits that do not change the state another agent needs to understand.

A useful test is:

> Would the current HANDOFF mislead the next agent after this task?

If yes, update it.

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

## 7. Documentation accuracy

Documentation must describe the repository as it actually exists.

Never:

- document unfinished work as completed;
- invent commands, files, APIs, components, or behavior;
- preserve outdated statements when the task makes them false;
- add speculative plans to architecture documentation as if they were implemented.

When future work needs to be recorded, clearly distinguish it from current implementation.

## 8. Scope and autonomy

Perform the requested task without expanding its scope unnecessarily.

The agent may independently:

- inspect relevant files;
- run appropriate checks;
- update directly affected documentation;
- update HANDOFF when required by the rules above.

The agent should request user input only when a decision genuinely requires product, business, or design intent that cannot be derived from the repository or existing instructions.

Routine documentation maintenance does not require user approval.

## 9. Project-specific instructions

Project-specific rules may extend this file but should not duplicate the general rules above.

Keep permanent instructions concise.

Detailed procedures belong in `docs/workflows/`.
