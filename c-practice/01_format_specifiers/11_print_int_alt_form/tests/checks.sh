#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%x"  main.c || { echo "Need %x"; exit 1; }
grep -q "%X"  main.c || { echo "Need %X"; exit 1; }
grep -q "%o"  main.c || { echo "Need %o"; exit 1; }
grep -q "%#x" main.c || { echo "Need %#x"; exit 1; }
grep -q "%#o" main.c || { echo "Need %#o"; exit 1; }

echo "[CHECK] Format specifiers validated."
