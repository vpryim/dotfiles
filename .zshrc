# Remove 'Last Login' message
printf '\33c\e[3J'

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export EDITOR=nvim

autoload -Uz compinit; compinit
autoload -U promptinit; promptinit

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

# https://github.com/sindresorhus/pure?tab=readme-ov-file#colors
zstyle :prompt:pure:path color '#5ac289'
zstyle :prompt:pure:prompt:success color '#ffb700'

# pure
PURE_PROMPT_SYMBOL='❯❯❯'
PURE_PROMPT_VICMD_SYMBOL='❮❮❮'
prompt pure

# fzf
eval "$(fzf --zsh)"

# History search using Up/Down keys
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Enable vi mode, it should be before abbr
# https://zsh-abbr.olets.dev/advanced.html#vi-mode
bindkey -v
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char

# Edit current line in vim
autoload -U edit-command-line
bindkey '^e' edit-command-line
zle -N edit-command-line

# Remap fzf file widget to Ctrl+P
bindkey -r '^T'
bindkey '^P' fzf-file-widget

# abbr
source /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh
abbr -S -q g='git'
abbr -S -q ga='git add .'
abbr -S -q gs='git status'
abbr -S -q gd='git diff'
abbr -S -q gdc='git diff --cached'
abbr -S -q gc='git commit'
abbr -S -q gco='git checkout'
abbr -S -q gl='git log --format=pink'
abbr -S -q gh='git log --format=pink -n 5'
abbr -S -q gca='git commit --amend'
abbr -S -q n='npm run'
abbr -S -q k='kubectl'
abbr -S -q c='clear'
abbr -S -q m='mdl'
abbr -S -q mu='mdl run-user'
abbr -S -q mc='mdl run-corp'
abbr -S -q mru='mdl run-user'
abbr -S -q mrc='mdl run-corp'
abbr -S -q mcu='mdl create-user'
abbr -S -q mcc='mdl create-corp'
abbr -S -q ll='ls -ll'
abbr -S -q la='ls -la'
abbr -S -q zshrc='nvim ~/.zshrc'

# alias
alias vim='nvim'
alias ..='cd ..'
alias prettyjson="xargs -0 node -e \"console.log(require('util').inspect(JSON.parse(process.argv[1]), { depth: 4, colors: true }))\""

# autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$WASMTIME_HOME/bin:$PATH"
