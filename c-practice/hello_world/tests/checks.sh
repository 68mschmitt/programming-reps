#!/usr/bin/env bash
# Fail the test if program doesn't use printf or if it uses banned calls.
set -euo pipefail

SOURCE_FILE="${1:-main.c}"

# Require printf
if ! grep -E '\bprintf\s*\(' "$SOURCE_FILE" >/dev/null; then
  echo "[CHECK] Expected to use printf(...)." >&2
  exit 1
fi

# For this exercise, disallow puts/write as an example of "expected way"
if grep -E '\bputs\s*\(|\bwrite\s*\(' "$SOURCE_FILE" >/dev/null; then
  echo "[CHECK] Forbidden call detected (puts/write). Use printf for this one." >&2
  exit 1
fi

echo "[CHECK] Style/approach checks passed."
