# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

export ATUIN_NOBIND="true"
eval "$(/opt/homebrew/bin/atuin init zsh)"

bindkey '^r' atuin-search

# bind to the up key, which depends on terminal mode
bindkey '^[[A' atuin-up-search
bindkey '^[OA' atuin-up-search

if [ -f ~/.env ]; then
    source ~/dotfiles/.env
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion" ] && \. "/usr/local/opt/nvm/etc/bash_completion"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:/opt/homebrew/share/virtualenv/bin"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH=/usr/local/mysql/bin:/usr/local/sbin:/Users/moonlander/.nvm/versions/node/v21.7.1/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/moonlander/.composer/vendor/bin:/Users/moonlander/.composer/vendor/bin:/usr/local/share/virtualenv/bin:/Users/moonlander/.composer/vendor/bin


# PHP_VERSION='8.4'
# export PATH="/usr/local/opt/php@$PHP_VERSION/bin:$PATH"
# export PATH="/usr/local/opt/php@$PHP_VERSION/sbin:$PATH"
# Added by Windsurf
export PATH="/Users/moonlander/.codeium/windsurf/bin:$PATH"

export PATH="/usr/local/opt/icu4c@76/bin:$PATH"
export PATH="/usr/local/opt/icu4c@76/sbin:$PATH"

export LDFLAGS="-L/usr/local/opt/icu4c@76/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c@76/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c@76/lib/pkgconfig"
export PATH=/usr/local/opt/icu4c@76/sbin:/usr/local/opt/icu4c@76/bin:/Users/moonlander/.codeium/windsurf/bin:/usr/local/opt/php@8.4/sbin:/usr/local/opt/php@8.4/bin:/usr/local/mysql/bin:/usr/local/sbin:/Users/moonlander/.nvm/versions/node/v21.7.1/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/moonlander/.composer/vendor/bin:/Users/moonlander/.composer/vendor/bin:/usr/local/share/virtualenv/bin:/Users/moonlander/.composer/vendor/bin:/opt/homebrew/bin


# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

eval "$(starship init zsh)"

eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

eval "$(zoxide init zsh)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c="clear"
alias cdx="cd /Users/moonlander/dotfiles"
alias cd.="cd /Users/moonlander/.config"
alias cdc="cd /Volumes/Work/Code"
alias cdp="cd /Volumes/Work/Projects"
alias cd:proj="cd /Volumes/Work/Projects"
alias cd:fmm="cd /Volumes/Work/Projects/mammarzenie.org/site"
alias cd:fmm:theme="cd /Volumes/Work/Projects/mammarzenie.org/site/htdocs/content/themes/themosis"
alias cd:fmm:trellis="cd /Volumes/Work/Projects/mammarzenie.org/trellis"
alias cd:stratus="cd /Volumes/Work/Projects/stratus.earth/site"
alias cd:stratus:theme="cd /Volumes/Work/Projects/stratus.earth/site/web/app/themes/sage"
alias cd:stratus:trellis="cd /Volumes/Work/Projects/stratus.earth/trellis"
alias cd:arena="cd /Volumes/Work/Projects/thearena.network/site"
alias cd:trimit="cd /Volumes/Work/Projects/trimit.co.uk/site"
alias cd:trimit:theme="cd /Volumes/Work/Projects/trimit.co.uk/site/htdocs/content/themes/themosis"
alias cd:trimit:trellis="cd /Volumes/Work/Projects/trimit.co.uk/trellis"
alias cd:ssh="cd /Volumes/Work/Projects/sewsewhappy.co.uk/site"
alias cd:ssh:theme="cd /Volumes/Work/Projects/sewsewhappy.co.uk/site/htdocs/content/themes/themosis"
alias cd:ssh:trellis="cd /Volumes/Work/Projects/sewsewhappy.co.uk/trellis"
alias cd:ttc="cd /Volumes/Work/Projects/shopify.theturmeric.co"
alias cd:ep="cd /Volumes/Work/Projects/shopify.eternapure.com"

alias anv:e="ansible-vault encrypt group_vars/all/vault.yml group_vars/local/vault.yml group_vars/staging/vault.yml group_vars/production/vault.yml"
alias anv:d="ansible-vault decrypt group_vars/all/vault.yml group_vars/local/vault.yml group_vars/staging/vault.yml group_vars/production/vault.yml"
alias anv:er="ansible-vault encrypt group_vars/all/vault.yml group_vars/development/vault.yml group_vars/staging/vault.yml group_vars/production/vault.yml"
alias anv:dr="ansible-vault decrypt group_vars/all/vault.yml group_vars/development/vault.yml group_vars/staging/vault.yml group_vars/production/vault.yml"

alias ngrok:mm="ngrok config add-authtoken 2S7RroJxsYQv182fUTUVy9NUglC_4oUmg7aHoQ8v2tKDKNmqc"
alias ngrok:db="ngrok config add-authtoken 2EXaqodLxyqnMYWW58pKDEDBZZ0_LQyENpi7WwdPHcrF7QbD"

alias profile:reload="source ~/.zshrc && clear"
alias hosts:edit="sudo nvim /etc/hosts"
alias hosts:reload="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

alias python=python3

alias ssh:db='ssh digitalbrew@46.101.49.199'
alias ssh:fmm='ssh mammarzenie@37.233.103.20'
alias ssh:marek='ssh mareksieka@46.101.49.199'
alias ssh:trimit='ssh trimit@188.166.157.124'
alias ssh:cloud 'ssh moonlander@5.9.59.27'

alias akd=" ssh-add ~/.ssh/id_ed_digitalbrew --apple-use-keychain"
alias akm=" ssh-add ~/.ssh/id_ed_muchmore --apple-use-keychain"

alias scp:fmm:log='scp mammarzenie@37.233.103.20:webapps/mammarzenie_org_prod/current/storage/logs/themosis.log ./fmm-themosis.log'
alias scp:trimit:log='scp trimit@188.166.157.124:webapps/trimit_co_uk_prod/current/storage/logs/themosis.log ./trimit-themosis.log'

alias x:vol:on='launchctl load -wF /System/Library/LaunchAgents/com.apple.OSDUIHelper.plist'
alias x:vol:off='launchctl unload -wF /System/Library/LaunchAgents/com.apple.OSDUIHelper.plist'
alias yabai:watch:focusFollowMouse='for ((;;)) yabai -m config focus_follows_mouse autofocus  && sleep 2'
alias x:wall='automator -i "/Volumes/Docs/Pictures/Wallpapers/Static/groove/minimalistic/gruvbox_astro.jpg" ~/dotfiles/wall/wall.workflow'

alias wpa='wp acorn'
alias pa='php artisan'

alias tds='trellis deploy staging'
alias tdp='trellis deploy production'
 
alias bbi='brew bundle install && brew link --overwrite php@8.4'

alias v='nvim'

ssh:list() {
  cat <<EOF
  Available options:
  - ssh:cloud
  - ssh:db
  - ssh:fmm
  - ssh:marek
  - ssh:trimit
EOF
}

a() {
  if [ -f "artisan" ]; then
php artisan "$@"
  else
    wp acorn "$@"
  fi
}

nv() {
  # Assumes all configs exist in directories named ~/.config/nvim-*
  local config=$(fd --max-depth 1 --glob 'nvim-*' ~/.config | fzf --prompt="Neovim Configs > " --layout=reverse --border --exit-0)

  # If I exit fzf without selecting a config, don't open Neovim
  [[ -z $config ]] && echo "No config selected" && return

  # Open Neovim with the selected config
  NVIM_APPNAME=$(basename $config) nvim $@
}

source $HOME/dotfiles/scripts/beacon/variables
source $HOME/dotfiles/scripts/beacon/helpers
source $HOME/dotfiles/scripts/beacon/beacon
