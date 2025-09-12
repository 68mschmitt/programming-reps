#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%Lf" main.c || { echo "Need %Lf"; exit 1; }

echo "[CHECK] Validations Complete"
