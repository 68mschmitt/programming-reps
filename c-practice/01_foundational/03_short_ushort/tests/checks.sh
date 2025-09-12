#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%hd" main.c || { echo "Need %hd"; exit 1; }
grep -q "%hu" main.c || { echo "Need %hu"; exit 1; }

echo "[CHECK] Format specifiers validated."
