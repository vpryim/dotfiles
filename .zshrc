# Remove 'Last Login' message
printf '\33c\e[3J'

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

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

# https://github.com/sindresorhus/pure?tab=readme-ov-file#colors
zstyle :prompt:pure:path color yellow

# pure
prompt pure

# fzf
eval "$(fzf --zsh)"

# abbr
source /usr/local/share/zsh-abbr/zsh-abbr.zsh
abbr -S -q g='git'
abbr -S -q gs='git status'
abbr -S -q gd='git diff'
abbr -S -q gc='git commit'
abbr -S -q gca='git commit --amend'
abbr -S -q n='npm run'
abbr -S -q k='kubectl'
abbr -S -q c='clear'

# alias
alias vim='nvim'
alias prettyjson="xargs -0 node -e \"console.log(require('util').inspect(JSON.parse(process.argv[1]), { colors: true }))\""

