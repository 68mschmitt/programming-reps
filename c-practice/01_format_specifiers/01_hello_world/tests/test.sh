#!/usr/bin/env bash
set -euo pipefail

APP="${1:?path to built app required}"

# 1) Black-box run: compare stdout to expected
OUTPUT="$("$APP")"
diff -u <(printf "%s\n" "$OUTPUT") tests/expect.out

# 2) Basic exit code convention (0 == success)
"$APP" >/dev/null
if [[ $? -ne 0 ]]; then
  echo "[TEST] Non-zero exit code." >&2
  exit 1
fi

# 3) Style/approach checks (did we do it the intended way?)
bash tests/checks.sh "main.c"

echo "[TEST] All tests passed."
