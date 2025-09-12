#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%8d"  main.c || { echo "Need field width"; exit 1; }
grep -q "%\\.3f" main.c || { echo "Need precision"; exit 1; }
grep -q "%\\+d" main.c || { echo "Need + flag"; exit 1; }
grep -q "%08u" main.c || { echo "Need zero-pad"; exit 1; }

echo "[CHECK] Format specifiers validated."
