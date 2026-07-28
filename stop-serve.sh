#!/usr/bin/env bash
# Stop the local HTTP server started by serve.sh.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PID_FILE="$DIR/.serve.pid"

if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
  kill "$(cat "$PID_FILE")"
  rm -f "$PID_FILE"
  echo "Server stopped."
else
  echo "No running server found (via pid file); checking port 8000..."
  PIDS="$(lsof -ti :8000 || true)"
  if [ -n "$PIDS" ]; then
    echo "$PIDS" | xargs kill
    echo "Killed process(es) on port 8000: $PIDS"
  else
    echo "Nothing to stop."
  fi
  rm -f "$PID_FILE"
fi
