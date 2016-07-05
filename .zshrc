# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '/home/johnathan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
#
# Automatically prepend cd when entering a path into shell

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
alias gl='git log --oneline --decorate'
alias gm='git merge'
alias gp='git push'
alias gr='git pull'
alias gs='git stash'
alias gsc='git rebase -i'
alias gsp='git stash pop'
alias ghist='git log --color --pretty=format:\"%C(yellow)%h%C(reset) %s%C(bold red)%d%C(reset)%C(green)%ad%C(reset) %C(blue)[%an]%C(reset)\" --relative-date --decorate'
alias gv="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias gv1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gv2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gv3="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset) --all"
alias gvs1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
alias gvs2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias gvs3="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)"
alias hist='history | grep'
alias justdoit='sudo "$BASH" -c "$(history -p !!)"'
alias please='sudo "$BASH" -c "$(history -p !!)"'
alias untar='tar xvfz'
alias update='sudo pacman -Syu'
alias upgrade='sudo pacman -Syu'

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
autoload -Uz promptinit
promptinit
autoload -Uz colors
colors
PROMPT=%{$fg[green]%}\$vcs_info_msg_0_\ %{$fg[yellow]%}%2~%{$reset_color%}\ $\ 
RPROMPT="[%{$fg[green]%}%?%{$reset_color%}]"
zstyle ':vcs_info:git:*' formats '%b'

ColorCursor=#ececefeff1f1
ColorForeground=#ca52ca52ca52
ColorBackground=#262632323838
ColorPalette=#262632323838;#ffff98980000;#8b8bc3c34a4a;#ffffc1c10707;#2cf08967b330;#d2fd69b9a965;#000096968888;#cfcfd8d8dcdc;373747474f4f;#ffffa7a74d4d;#9c9ccccc6565;#ffffa0a00000;#13bc85d2c3ab;#b72591b7d0f9;#2626a6a69a9a;#ececefeff1f1
screenfetch 2> /dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
