#!/bin/zsh
set -euo pipefail

APP_DIR="${1:-$(cd "$(dirname "$0")" && pwd)}"
LOG_FILE="${TMPDIR:-/tmp}/texttomp3m4a_startup.log"
PYTHON_BIN="$APP_DIR/.venv311/bin/python"
APP_FILE="$APP_DIR/app.pyw"

# Make sure Homebrew-installed tools are visible when launched from Finder.
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

if [[ ! -x "$PYTHON_BIN" ]]; then
    printf '[%s] ERROR: Missing Python launcher: %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$PYTHON_BIN" >>"$LOG_FILE"
    exit 1
fi

{
    printf '[%s] Launch requested from %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$APP_DIR"
    printf '[%s] Python: %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$PYTHON_BIN"
    printf '[%s] App: %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$APP_FILE"
} >>"$LOG_FILE"

export PYTHONUNBUFFERED=1
export TEXTTOMP3_BOOT_LOG="$LOG_FILE"

"$PYTHON_BIN" -u "$APP_FILE" >>"$LOG_FILE" 2>&1 &
disown 2>/dev/null || true
exit 0
