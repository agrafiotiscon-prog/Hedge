#!/usr/bin/env bash
# Serve the aihf terminal app as a web page on port 8000. Runs every time the
# codespace opens; does nothing if the server is already up.
set -euo pipefail

PORT="${PORT:-8000}"
BIN="$HOME/.aihf/bin"

# The page connects back to the server over a websocket at this URL, so it
# must be the address the browser uses: the codespace's forwarded port.
if [ -n "${CODESPACE_NAME:-}" ]; then
  URL="https://${CODESPACE_NAME}-${PORT}.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:-app.github.dev}"
else
  URL="http://localhost:${PORT}"
fi

if pgrep -f "textual serve" > /dev/null; then
  echo "AI Hedge Fund is already running: $URL"
  exit 0
fi

nohup "$BIN/textual" serve -c --host 0.0.0.0 --port "$PORT" --url "$URL" \
  --title "AI Hedge Fund" "$BIN/aihf" > /tmp/aihf-serve.log 2>&1 &

echo "AI Hedge Fund: $URL"
