#!/bin/sh
set -eu

# ---- INSTALL COMMAND ----
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/snowpirate/dotfiles/refs/heads/main/install.sh)"
# -----------------------------

# ---- CONFIG: change these ----
REPO_RAW_BASE="https://raw.githubusercontent.com/snowpirate/dotfiles/refs/heads/main"
FILES="vimrc tmux.conf"   # repo paths relative to repo root (no leading dot)
# -----------------------------

need_cmd() { command -v "$1" >/dev/null 2>&1; }

if ! need_cmd curl; then
  echo "Error: curl is required." >&2
  exit 1
fi

HOME_DIR="${HOME:?HOME is not set}"
TMPDIR="$(mktemp -d 2>/dev/null || mktemp -d -t dotinstall)"
cleanup() { rm -rf "$TMPDIR"; }
trap cleanup EXIT INT TERM

echo "Downloading dotfiles into: $TMPDIR"

for path in $FILES; do
  base="$(basename "$path")"
  src_url="${REPO_RAW_BASE}/${path}"
  tmp_file="${TMPDIR}/${base}"

  echo "  - $src_url"
  curl -fsSL "$src_url" -o "$tmp_file"

  dest="${HOME_DIR}/.${base}"

  # Backup if file exists
  if [ -e "$dest" ]; then
    ts="$(date +%Y%m%d-%H%M%S)"
    backup="${dest}.bak.${ts}"
    echo "    Found existing $dest -> backing up to $backup"
    mv "$dest" "$backup"
  fi

  echo "    Installing -> $dest"
  mv "$tmp_file" "$dest"
  chmod 600 "$dest" 2>/dev/null || true
done

echo "Done."
