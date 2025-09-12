#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%lld" main.c || { echo "Need %lld"; exit 1; }
grep -q "%llu" main.c || { echo "Need %llu"; exit 1; }

echo "[CHECK] Validations Complete"
