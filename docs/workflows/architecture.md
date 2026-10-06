# ARCHITECTURE Synchronization Workflow

## Purpose

ARCHITECTURE is a strict permanent document. It describes the current architecture of the project as it factually exists.

This workflow is invoked explicitly, when architectural synchronization is explicitly required, or as part of `docs/workflows/permanent-docs-sync.md`.

General principles (language, accuracy, minimal changes) are defined in AGENTS.md section 4.

## Evidence rules

Before writing an architectural statement, verify it against the project's factual state:

- project structure;
- code;
- configuration;
- runtime / deployment artifacts;
- explicitly recorded project constraints, if they genuinely exist.

Evidence principles:

- `docs/HANDOFF.md` is a signal / candidate source, NOT evidence.
- repository and project artifacts are the evidence.
- never transfer raw HANDOFF wording verbatim.
- when HANDOFF conflicts with the repository, the repository state has priority.
- do not record plans as existing architecture.

## Section guidance

### Overview

Describe the system at a high level. Explain what the project is and what architectural shape it currently has. Keep this section concise.

### System Structure

Describe the major architectural parts of the system and how they relate to each other. Focus on runtime structure, architectural boundaries, modules, services, and their relationships.

Do not use this section as a generic repository tree. Do not list support or documentation files such as `README.md`, `AGENTS.md`, or `docs/` unless they have architectural significance.

### Components

Describe the main components and their responsibilities. Include only components that are architecturally relevant. Do not list every module, file, or class.

### Data and Control Flow

Describe important flows of data or control through the system. Include only flows necessary to understand how major parts interact. Do not document trivial internal call chains.

### External Integrations

Describe external systems, services, APIs, platforms, or infrastructure that materially affect the architecture. Include the role of each integration. Do not list incidental tools that do not affect system design.

### Runtime and Deployment

Describe how the system runs in practice. Include relevant runtime relationships, services, processes, containers, deployment units, or execution environments. Do not turn this section into a full operations manual.

### Architectural Constraints

Record constraints that materially influence system design. Examples include required technologies, compatibility requirements, security boundaries, deployment restrictions, performance constraints, or architectural rules that future changes must preserve. Do not record temporary implementation preferences as architectural constraints.

### Known Architectural Limitations

Record known structural limitations, architectural debt, or constraints that may affect future development. Include only limitations that are currently real and relevant. Remove or update them when they are resolved.

## Key anti-patterns

ARCHITECTURE is a current-state strict document, not a design diary.

When the architecture changes: update the affected sections, remove obsolete descriptions, preserve unchanged information.

Avoid:
- using ARCHITECTURE as a repository tree;
- using ARCHITECTURE as a design diary;
- documenting minor implementation details;
- documenting temporary plans;
- appending historical states instead of updating existing sections;
- copying HANDOFF text without verification.
