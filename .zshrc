export ZSH="/Users/vpryim/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias c=clear
alias gs="git status"
alias q=exit
alias prettyjson="xargs -0 node -e \"console.log(require('util').inspect(JSON.parse(process.argv[1]), { colors: true }))\""
alias vim=nvim

