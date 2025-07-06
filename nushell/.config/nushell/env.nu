# env.nu
#
# Installed by:
# version = "0.101.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

use std "path add"

path add ~/.composer/vendor/bin

mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nU

$env.STARSHIP_CONFIG = '/Users/moonlander/.config/starship/starship.toml'
# $env.PATH = ($env.PATH | prepend "/Users/moonlander/.fnm")

# load-env (fnm env --shell bash
#     | lines
#     | str replace 'export ' ''
#     | str replace -a '"' ''
#     | rename name value
#     | where name != "FNM_ARCH" and name != "PATH"
#     | reduce -f {} {|it, acc| $acc | upsert $it.name $it.value }
# )

# $env.PATH = ($env.PATH
#     | split row (char esep)
#     | prepend $"($env.FNM_MULTISHELL_PATH)/bin"
# )
