#!/usr/bin/env sh
cd "$(dirname "$0")" || exit 1

if command -v npx >/dev/null 2>&1; then
  echo "Rulefruit starting: http://localhost:3000"
  exec npx --yes serve -l 3000 .
fi

if command -v python3 >/dev/null 2>&1; then
  echo "Rulefruit starting: http://localhost:8000"
  exec python3 -m http.server 8000
fi

if command -v python >/dev/null 2>&1; then
  echo "Rulefruit starting: http://localhost:8000"
  exec python -m http.server 8000
fi

echo "Node.js (npx) or Python not found. Please install one of them and try again."
exit 1
