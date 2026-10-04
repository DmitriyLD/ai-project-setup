# Documentation Maintainer Workflow

## Purpose

This workflow defines how an AI agent evaluates and maintains project documentation after completing a task.

Documentation updates are part of task completion when the completed task materially changes the project state.

The workflow must not create documentation changes mechanically after every edit.

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

## 5. Accuracy rules

When updating documentation:

- describe only the repository state that actually exists;
- distinguish current implementation from future plans;
- do not claim that tests passed unless they were actually run successfully;
- do not invent commands, files, APIs, dependencies, or behavior;
- remove or correct statements made false by the completed task;
- preserve information that remains accurate;
- avoid duplicating large amounts of information between documents.

If documentation conflicts with the repository, resolve the conflict using repository state as factual evidence.

## 6. Minimal-change principle

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

## 7. Final verification

Before considering documentation maintenance complete:

1. Verify that updated documentation matches the final repository state.
2. Verify that no implemented functionality is described only as planned.
3. Verify that no planned functionality is described as implemented.
4. Verify that HANDOFF is accurate if the task changed continuation context.
5. Verify that unrelated documentation was not modified unnecessarily.

If no documentation required changes, leave the documentation tree untouched.
