#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%zu" main.c || { echo "Need %zu"; exit 1; }
grep -q "%td" main.c || { echo "Need %td"; exit 1; }
grep -q "PRIu64" main.c || { echo "Use <inttypes.h> macros"; exit 1; }

echo "[CHECK] Format specifiers validated."
