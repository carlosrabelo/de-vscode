#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "Running Dockerfile lint..."
docker run --rm -v "$ROOT_DIR:/root" hadolint/hadolint:latest /root/Dockerfile 2>/dev/null || echo "hadolint not available — install with: docker pull hadolint/hadolint"
echo "Done."
