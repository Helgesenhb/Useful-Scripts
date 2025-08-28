# Tmux Home IT-Ops Setup

This README walks you through setting up and using a professional tmux environment on Ubuntu for IT-operations practice. It includes **TPM (Tmux Plugin Manager)**, vim-style navigation, multiple panes, and useful plugins.

---

## 1. Setup

Run the included setup script:

```bash
chmod +x setup-tmux.sh
./setup-tmux.sh
```

* This script does the following:

  1. Kills any existing tmux sessions.
  2. Installs TPM (Tmux Plugin Manager).
  3. Writes a minimal, working `.tmux.conf` with vim-style pane navigation.
  4. Installs useful plugins (`vim-tmux-navigator` and `dracula/tmux`).
  5. Creates this `README.md` with all instructions.

---

## 2. Start tmux

```bash
tmux new -s mysession
```

* Opens a new tmux session named `mysession`.
* You should now see a terminal with a status bar at the bottom.

---

## 3. Reload tmux configuration

Inside tmux, press:

```
Ctrl + b → :
```

Then type:

```tmux
source-file ~/.tmux.conf
```

* Reloads the tmux configuration without restarting the session.
* Ensures your keybindings and plugins are active.

---

## 4. Install plugins with TPM

Press:

```
Ctrl + b → Shift + I
```

* Capital **I** tells TPM to install all plugins listed in `.tmux.conf`.
* Watch the bottom status bar for installation progress.

---

## 5. Split panes

* **Vertical split (side-by-side):**

```
Ctrl + b → %
```

* **Horizontal split (top-bottom):**

```
Ctrl + b → "
```

* You can now have multiple terminals inside the same tmux window.

---

## 6. Navigate between panes (vim-style)

```
Ctrl + b → h  # Move to left pane
Ctrl + b → j  # Move to bottom pane
Ctrl + b → k  # Move to top pane
Ctrl + b → l  # Move to right pane
```

* Works seamlessly inside vim if you have `vim-tmux-navigator` installed.

---

## 7. Resize panes

* Press **Ctrl + b**, then hold **Ctrl** and use arrow keys:

```
Ctrl + b → Ctrl + ↑ / ↓ / ← / →
```

* Adjusts the size of the active pane.

---

## 8. Close a pane

* Type `exit` inside the pane **or** press:

```
Ctrl + b → x
```

* Confirm with `y`.

---

## 9. Create and switch windows (like tabs)

* **Create new window:**

```
Ctrl + b → c
```

* **Next window:**

```
Ctrl + b → n
```

* **Previous window:**

```
Ctrl + b → p
```

* **Jump to window by number:**

```
Ctrl + b → <number>
```

---

## 10. Reload config anytime

Inside tmux, press:

```
Ctrl + b → :
```

Then type:

```tmux
source-file ~/.tmux.conf
```

* This reloads the configuration without restarting tmux.

---

## 11. Summary Workflow

1. Kill old tmux sessions (`tmux kill-server`).
2. Install TPM (`git clone ...`).
3. Write minimal `.tmux.conf` with prefix, vim navigation, and plugins.
4. Start tmux (`tmux new -s mysession`).
5. Reload config (`Ctrl+b → : → source-file ~/.tmux.conf`).
6. Install plugins (`Ctrl+b → Shift+I`).
7. Split panes, navigate, resize, and manage windows.

* You now have a fully functional tmux environment ready for IT-operations practice.

---

This README is saved as `~/tmux-README.md` and can be referred to anytime while using tmux.
