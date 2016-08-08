#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Automatically prepend cd when entering a path into shell
shopt -s autocd

alias :q=' exit'
alias ..='cd ..'
alias cat='lolcat'
alias cd..='cd ..'
alias clear='clear && screenfetch'
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias lz='ll -rS'					#sort by size
alias g='git status -sb'
alias ga='git add'
alias gb='git branch'
alias gc='git checkout'
alias gca='git commit --amend'
alias gcb='git checkout -b'
alias gcf='git commit -m "reformatted some stuff"'
alias gcm='git commit -m'
alias gcs='git commit -m "did some stuff"'
alias gd='git diff --color-words'
alias gh='git hist'
alias ghf='git log --follow -p --'
alias gl='git log --oneline --decorate'
alias gm='git merge'
alias gp='git push'
alias gr='git pull'
alias gs='git stash'
alias gsc='git rebase -i'
alias gsp='git stash pop'
alias gv="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias gv1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gv2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gvs1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
alias gvs2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias hist='history | grep'
alias justdoit='sudo "$BASH" -c "$(history -p !!)"'
alias override='sudo "$BASH" -c "$(history -p !!)"'
alias please='sudo "$BASH" -c "$(history -p !!)"'
alias untar='tar xvfz'
alias update='sudo pacman -Syu'
alias upgrade='sudo pacman -Syu'

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[33m\]\h:\W \$ \[\e[m\]"
export PS1

export VISUAL="vim"
set -o vi

ColorCursor=#ececefeff1f1
ColorForeground=#ca52ca52ca52
ColorBackground=#262632323838
ColorPalette=#262632323838;#ffff98980000;#8b8bc3c34a4a;#ffffc1c10707;#2cf08967b330;#d2fd69b9a965;#000096968888;#cfcfd8d8dcdc;373747474f4f;#ffffa7a74d4d;#9c9ccccc6565;#ffffa0a00000;#13bc85d2c3ab;#b72591b7d0f9;#2626a6a69a9a;#ececefeff1f1
screenfetch 2> /dev/null

source ~/.localbashrc 2> /dev/null
