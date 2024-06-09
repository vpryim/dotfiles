alias c=clear
alias gs="git status"
alias q=exit
alias prettyjson="xargs -0 node -e \"console.log(require('util').inspect(JSON.parse(process.argv[1]), { colors: true }))\""
alias vim=nvim

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

zstyle :prompt:pure:path color white
# zstyle :prompt:pure:path color cyan

# pure
prompt pure

# fzf
eval "$(fzf --zsh)"

# abbr
source /usr/local/share/zsh-abbr/zsh-abbr.zsh

abbr -S g=git
