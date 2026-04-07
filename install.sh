#!/bin/bash
# devcoach installer — run from inside your project directory
# Usage: curl -sL https://raw.githubusercontent.com/MikWess/devcoach/main/install.sh | bash

set -e

echo "Installing devcoach into $(pwd)..."

# Check if .claude/CLAUDE.md already exists
if [ -f ".claude/CLAUDE.md" ]; then
  echo ""
  echo "Warning: .claude/CLAUDE.md already exists in this directory."
  echo "devcoach will overwrite your .claude/ folder."
  read -p "Continue? (y/n) " -n 1 -r
  echo ""
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 1
  fi
fi

# Clone to temp dir
TMPDIR=$(mktemp -d)
git clone --quiet https://github.com/MikWess/devcoach.git "$TMPDIR/devcoach"

# Copy everything
cp -r "$TMPDIR/devcoach/.claude" .
cp "$TMPDIR/devcoach/dev.md" .
cp "$TMPDIR/devcoach/knowledge.json" .

# Clean up
rm -rf "$TMPDIR"

# Add devcoach files to .gitignore if not already there
if [ -f ".gitignore" ]; then
  grep -qxF 'knowledge.json' .gitignore || echo 'knowledge.json' >> .gitignore
  grep -qxF 'dev.md' .gitignore || echo 'dev.md' >> .gitignore
else
  printf 'knowledge.json\ndev.md\n' > .gitignore
fi
echo "  Added knowledge.json and dev.md to .gitignore"

echo ""
echo "devcoach installed. You now have:"
echo "  .claude/     — coach persona + 4 modes (/plan /create /review /learn)"
echo "  dev.md       — your preferences (edit this)"
echo "  knowledge.json — your concept store (auto-updated)"
echo ""
echo "Open Claude Code and start a session. The coach will take it from here."
echo ""
echo "If devcoach helps you, star the repo so others can find it:"
echo "  https://github.com/MikWess/devcoach"
