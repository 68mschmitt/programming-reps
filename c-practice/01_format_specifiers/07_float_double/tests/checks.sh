#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%f" main.c || { echo "Need %f"; exit 1; }

echo "[CHECK] Validations Complete"
