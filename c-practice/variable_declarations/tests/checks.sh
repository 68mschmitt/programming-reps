#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"
# Add per-exercise checks; example:
# grep -q 'printf\s*\(' "$src" || { echo "use printf"; exit 1; }
echo "[CHECK] (no checks defined)"
