# tmux-clock

This plugin displays the time for a given timezone.

## Getting Started

You can use the `#{world_clock_status}` variable in your existing status line.

```shell
set-option -g status-right '#{world_clock_status}'

```

The following options can be configured.

```shell
# timezone
set -g @world_clock_tz 'Europe/Amsterdam'

# foreground color
set -g @world_clock_fgcolor 'red'

# background color
set -g @world_clock_bgcolor 'black'

# date-time format
set -g @world_clock_fmt '%H:%M_%tz'
```

## Installation

This is a plugin for [tmux plugin manager](https://github.com/tmux-plugins/tpm). You can install it by adding the following line in your tmux config.

```shell
set -g @plugin 'tmux-extensions/tmux-clock'
```

```bash
$ pip3 install pytz
```

## License

[MIT](./LICENSE)
