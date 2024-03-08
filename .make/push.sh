#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

NAME=$(grep '^NAME' "$ROOT_DIR/Makefile" | head -1 | cut -d= -f2- | xargs)
REF=$(git -C "$ROOT_DIR" symbolic-ref --short HEAD 2>/dev/null || echo unknown)
SHA=$(git -C "$ROOT_DIR" rev-parse --short=8 HEAD 2>/dev/null || echo dev)

PAK1="${NAME}:latest"
PAK2="${NAME}:${REF}-${SHA}"

echo "Pushing ${PAK1}..."
docker push "${PAK1}"
echo "Pushing ${PAK2}..."
docker push "${PAK2}"
echo "Done."
