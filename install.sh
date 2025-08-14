#!/bin/bash

# === Paths ===
OMARCHY_CONFIG="$HOME/.config/omarchy"
OMARCHY_BIN="$OMARCHY_CONFIG/bin"
HYPR_DIR="$HOME/.config/hypr"
HYPR_BINDINGS="$HYPR_DIR/bindings.conf"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# === Create Omarchy bin directory ===
mkdir -p "$OMARCHY_BIN"

# === Copy bin scripts ===
cp -r "$SCRIPT_DIR/bin/"* "$OMARCHY_BIN"/
echo "[OK] Copied scripts to $OMARCHY_BIN"

# === Ensure Hyprland config exists ===
mkdir -p "$HYPR_DIR"
touch "$HYPR_BINDINGS"

# === Backup bindings.conf ===
cp "$HYPR_BINDINGS" "$HYPR_BINDINGS.bak"
echo "[OK] Backup created: $HYPR_BINDINGS.bak"

# === Add keybinding if not already present ===
BINDING_LINE='bind = SUPER SHIFT, D, exec, ~/.config/omarchy/bin/omarchy-download-menu'
if ! grep -Fxq "$BINDING_LINE" "$HYPR_BINDINGS"; then
  echo "$BINDING_LINE" >>"$HYPR_BINDINGS"
  echo "[OK] Keybinding added to $HYPR_BINDINGS"
else
  echo "[SKIP] Keybinding already exists"
fi

# === Reload Hyprland if possible ===
if command -v hyprctl &>/dev/null; then
  hyprctl reload
  echo "[OK] Hyprland reloaded"
else
  echo "[INFO] Hyprland reload skipped (hyprctl not found)"
fi

echo "[DONE] Omarchy Download Menu installed."
