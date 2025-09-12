#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%c" main.c || { echo "Need %c"; exit 1; }
grep -q "%u" main.c || { echo "Need %u"; exit 1; }

echo "[CHECK] Validations Complete"
