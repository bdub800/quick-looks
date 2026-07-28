#!/usr/bin/env bash
# Start a local HTTP server for this site.
set -euo pipefail

PORT="${1:-8000}"
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PID_FILE="$DIR/.serve.pid"

if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
  echo "Server already running (pid $(cat "$PID_FILE")) at http://localhost:$PORT"
  exit 0
fi

cd "$DIR"
nohup python3 -m http.server "$PORT" >/tmp/quick-looks-serve.log 2>&1 &
echo $! > "$PID_FILE"

sleep 0.3
if kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
  echo "Serving $DIR at http://localhost:$PORT (pid $(cat "$PID_FILE"))"
else
  echo "Failed to start server; see /tmp/quick-looks-serve.log"
  rm -f "$PID_FILE"
  exit 1
fi
