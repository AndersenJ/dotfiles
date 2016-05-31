#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Automatically prepend cd when entering a path into shell
shopt -s autocd

alias ls='ls --color=auto'
alias g='git status -sb'
alias gb='git branch'
alias gh='git hist'
alias ga='git add'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gcs='git commit -m "did some stuff"'
alias gcf='git commit -m "reformatted some stuff"'
alias gca='git commit --amend'
alias gd='git diff --color-words'
alias gl='git log --oneline --decorate'
alias gm='git merge'
alias gp='git push'
alias gr='git pull'
alias gsc='git rebase -i'
alias gs='git stash'
alias gsp='git stash pop'
alias untar='tar xvfz'
alias ghist='git log --color --pretty=format:\"%C(yellow)%h%C(reset) %s%C(bold red)%d%C(reset)%C(green)%ad%C(reset) %C(blue)[%an]%C(reset)\" --relative-date --decorate'
alias gv="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias gv1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gv2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gv3="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset) --all"
alias gvs1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
alias gvs2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias gvs3="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)"

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
