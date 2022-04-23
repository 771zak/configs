# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias cls="clear"

alias vm="nvim"

alias open="xdg-open"

#git aliass

alias commit="git commit -m"
alias gts="git status"
alias push="git push"
alias add="git add"

#package aliass

alias install="sudo apt-get install"
alias remove="sudo apt-get remove"

