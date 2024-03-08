#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

NAME=$(grep '^NAME' "$ROOT_DIR/Makefile" | head -1 | cut -d= -f2- | xargs)

echo "Removing Docker images for ${NAME}..."
docker images "${NAME}" --format '{{.Repository}}:{{.Tag}}' | xargs -r docker rmi -f 2>/dev/null || true
echo "Done."
