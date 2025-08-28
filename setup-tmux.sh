#!/bin/bash
# setup-tmux.sh
# This script sets up tmux with TPM, vim-style navigation, and Dracula theme on Ubuntu.

set -e

echo "=== Killing existing tmux sessions ==="
tmux kill-server 2>/dev/null || true

echo "=== Installing TPM (Tmux Plugin Manager) ==="
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "TPM already installed"
fi

echo "=== Writing ~/.tmux.conf ==="
cat > ~/.tmux.conf <<'EOF'
# Set tmux prefix to Ctrl+b
set -g prefix C-b
unbind C-s
bind C-b send-prefix

# Vim-style pane navigation
setw -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# TPM plugin manager
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'dracula/tmux'

# Initialize TPM (keep this line at the bottom)
run '~/.tmux/plugins/tpm/tpm'
EOF

echo "=== Creating README.md ==="
cat > ~/tmux-README.md <<'EOF'
# Tmux Home IT-Ops Setup

This guide walks you through setting up a professional tmux environment on Ubuntu.

## Start tmux
tmux new -s mysession

## Reload configuration
Inside tmux:
Ctrl + b → :
source-file ~/.tmux.conf

## Install plugins
Inside tmux:
Ctrl + b → Shift + I

## Split panes
Vertical split (side by side): Ctrl + b → %
Horizontal split (top/bottom): Ctrl + b → "

## Navigate panes
Ctrl + b → h (left)
Ctrl + b → j (down)
Ctrl + b → k (up)
Ctrl + b → l (right)

## Resize panes
Ctrl + b → Ctrl + ↑ / ↓ / ← / →

## Close pane
Ctrl + b → x (then y)

## Create and switch windows
New window: Ctrl + b → c
Next window: Ctrl + b → n
Previous window: Ctrl + b → p
Jump to window by number: Ctrl + b → <number>

## Reload config anytime
Ctrl + b → :
source-file ~/.tmux.conf
EOF

echo "=== Setup complete ==="
echo "Start tmux with: tmux new -s mysession"
echo "Open ~/tmux-README.md for instructions on usage."
