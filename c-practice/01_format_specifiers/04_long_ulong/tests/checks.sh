#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%ld" main.c || { echo "Need %ld"; exit 1; }
grep -q "%lu" main.c || { echo "Need %lu"; exit 1; }

echo "[CHECK] Format specifiers validated."
