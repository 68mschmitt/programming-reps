#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%d"  main.c || { echo "Need %d";  exit 1; }
grep -q "%u"  main.c || { echo "Need %u";  exit 1; }

echo "[CHECK] Format specifiers validated."
