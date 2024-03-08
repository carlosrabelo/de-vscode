#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

NAME=$(grep '^NAME' "$ROOT_DIR/Makefile" | head -1 | cut -d= -f2- | xargs)

echo "Testing image ${NAME}:latest..."
docker run --rm "${NAME}:latest" code-server --version
echo "Tests passed."
