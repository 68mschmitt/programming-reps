#!/usr/bin/env bash
set -euo pipefail
APP="${1:?path to built app required}"
# Default golden output can be empty; customize per exercise.
if [[ -f tests/expect.out ]]; then
  OUTPUT="$("$APP")"
  diff -u <(printf "%s\n" "$OUTPUT") tests/expect.out
fi
"$APP" >/dev/null || { echo "[TEST] Non-zero exit code." >&2; exit 1; }
if [[ -f tests/checks.sh ]]; then
  bash tests/checks.sh "main.c"
fi
echo "[TEST] All tests passed."
