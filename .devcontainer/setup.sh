#!/usr/bin/env bash
# Install the AI hedge fund app (aihf) and the web server that shows it in a
# browser tab. Runs once, when the codespace is created.
set -euo pipefail

VENV="$HOME/.aihf"
python3 -m venv "$VENV"
"$VENV/bin/pip" install --quiet --upgrade pip
"$VENV/bin/pip" install --quiet "aihf==2.5.0" "textual-dev==1.8.0"

# Put `aihf` on the PATH of every new terminal.
for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
  if [ -f "$rc" ] && ! grep -q '.aihf/bin' "$rc"; then
    echo 'export PATH="$HOME/.aihf/bin:$PATH"' >> "$rc"
  fi
done

echo "aihf installed: $("$VENV/bin/pip" show aihf | grep '^Version')"
