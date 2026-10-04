#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGET_FILES=(
  "AGENTS.md"
  "docs/HANDOFF.md"
  "docs/ARCHITECTURE.md"
  "docs/DECISIONS.md"
  "docs/workflows/handoff.md"
  "docs/workflows/architecture.md"
  "docs/workflows/decision.md"
)

usage() {
  echo "Usage: install.sh <target-project-path>"
  echo ""
  echo "Installs AI Project Setup files into the target project."
  echo "The target directory must already exist."
  echo ""
  echo "Files installed:"
  for f in "${TARGET_FILES[@]}"; do
    echo "  $f"
  done
}

if [[ $# -lt 1 ]]; then
  usage
  exit 1
fi

TARGET_DIR="$1"

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Error: target directory does not exist: $TARGET_DIR"
  exit 1
fi

TARGET_DIR="$(cd "$TARGET_DIR" && pwd)"

# Phase 1: collect conflicts without modifying anything
conflicts=()
for file in "${TARGET_FILES[@]}"; do
  if [[ -e "$TARGET_DIR/$file" || -L "$TARGET_DIR/$file" ]]; then
    conflicts+=("$file")
  fi
done

if [[ ${#conflicts[@]} -gt 0 ]]; then
  echo "Error: the following files already exist in the target project:"
  for file in "${conflicts[@]}"; do
    echo "  $file"
  done
  echo ""
  echo "Installation aborted. No files were modified."
  exit 1
fi

# Phase 2: create directories and copy files
mkdir -p "$TARGET_DIR/docs"
mkdir -p "$TARGET_DIR/docs/workflows"

echo "Installing AI Project Setup into: $TARGET_DIR"
echo ""
echo "Created files:"
for file in "${TARGET_FILES[@]}"; do
  cp "$SCRIPT_DIR/$file" "$TARGET_DIR/$file"
  echo "  $file"
done

echo ""
echo "Installation complete."
