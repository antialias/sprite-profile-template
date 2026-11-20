#!/usr/bin/env bash
# Optional: delete this file if the profile installs nothing. It runs in the Sprite as user
# `sprite`, in a plain (non-interactive) shell, and must be safe to run twice.
set -euo pipefail

curl -fsS -o /dev/null -w 'example.com answered %{http_code}\n' https://example.com
