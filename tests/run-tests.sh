#!/usr/bin/env bash
set -euo pipefail

ROOT="$(pwd)/src"

echo "Running basic tests..."

# 1) index.html exists
if [ ! -f "$ROOT/index.html" ]; then
  echo "ERROR: src/index.html not found"
  exit 1
fi

# 2) has <title>
if ! grep -q "<title>.*</title>" "$ROOT/index.html"; then
  echo "ERROR: title tag not found or empty"
  exit 1
fi

# 3) has <h1>
if ! grep -q "<h1" "$ROOT/index.html"; then
  echo "ERROR: h1 not found"
  exit 1
fi

echo "All tests passed ✅"

