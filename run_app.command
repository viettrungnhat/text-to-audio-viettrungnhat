#!/bin/zsh
set -euo pipefail
cd "$(dirname "$0")"
exec "/usr/local/bin/python3.12" app.pyw
