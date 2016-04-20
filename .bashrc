#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias g='git status -sb'
alias gb='git branch'
alias gh='git hist'
alias ga='git add'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gd='git diff --color-words'
alias gl='git log --oneline --decorate'
alias gm='git merge'
alias gp='git push'
alias gr='git pull'
alias gsc='git rebase -i'
alias gs='git stash'
alias gsp='git stash pop'
alias gv='git visualize'

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)) /'
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

source ~/.localbashrc
