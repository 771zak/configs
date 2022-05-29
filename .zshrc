
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to android avd 
export ANDROID_SDK=/home/zak/Android/Sdk

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git web-search copyfile dirhistory)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias cl="clear"

alias open="xdg-open"

#git aliases

alias cln="git clone"
alias commit="git commit -m"
alias gts="git status"
alias push="git push"
alias add="git add"

#package aliases

alias install="sudo apt-get install"
alias remove="sudo apt-get remove"

#tmux aliases

alias newSes="tmux new -s"
alias tat="tmux a -t"
alias killSes="tmux kill-ses -t"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
