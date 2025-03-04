#!/usr/bin/env bash

function dot-safe() {
  local file="$1"
  if [[ -f "$file" ]]; then
    source $file
  fi
}

tmp_file="$(mktemp)"
tmux command-prompt -1 -p 'char:' "run-shell \"printf '%1' >> $tmp_file\""

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $current_dir/utils.sh
export JUMP_BACKGROUND_COLOR=$(get_tmux_option "@jump-bg-color" "\e[0m\e[32m")
export JUMP_FOREGROUND_COLOR=$(get_tmux_option "@jump-fg-color" "\e[1m\e[31m")
export JUMP_KEYS_POSITION=$(get_tmux_option "@jump-keys-position" "left")

dot-safe "/usr/local/share/chruby/chruby.sh"
dot-safe "/usr/local/share/chruby/auto.sh"
ruby "$current_dir/tmux-jump.rb" "$tmp_file"
