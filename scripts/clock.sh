#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck disable=1090
source "${CURRENT_DIR}/helpers.sh"

main() {
	local opt_tz
	local opt_fmt
	local opt_fgcolor
	local opt_bgcolor

	opt_tz="$(get_tmux_option "@world_clock_tz" "US/Eastern")"
	opt_fmt="$(get_tmux_option "@world_clock_fmt" "#[bold]%tz#[nobold]:_%H:%M")"
	opt_fgcolor="$(get_tmux_option "@world_clock_fgcolor" "default")"
	opt_bgcolor="$(get_tmux_option "@world_clock_bgcolor" "default")"

	"${CURRENT_DIR}/clock.py" "$opt_tz" "$opt_bgcolor" "$opt_fgcolor" "$opt_fmt"
}

main
