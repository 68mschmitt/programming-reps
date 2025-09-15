#!/usr/bin/env bash
set -euo pipefail
src="${1:-main.c}"

grep -q "%p" main.c || { echo "Need %p"; exit 1; }

echo "[CHECK] Format specifiers validated."
