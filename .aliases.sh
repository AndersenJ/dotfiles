alias :q=' exit'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
#alias cat='lolcat'
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
alias justdoit='sudo $(fc -ln -1)'
alias mkdir='mkdir -pv'
alias override='sudo $(fc -ln -1)'
alias please='sudo $(fc -ln -1)'
alias ports='netstat -tulanp'
alias untar='tar xvfz'
alias update='aurman -Syu --noedit --pgp_fetch --noconfirm --do_everything'
alias upgrade='aurman -Syu --noedit --pgp_fetch --noconfirm --do_everything'
alias vdi='lspci -k | grep -A 2 -E "(VGA|3D)"'
alias wget='wget -c'
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xvjf $1;;
            *.tar.gz) tar xvzf $1;;
            *.bz2) bunzip2 $1;;
            *.rar) unrar x $1;;
            *.gz) gunzip $1;;
            *.tar) tar xvf $1;;
            *.tbz2) tar xvjf $1;;
            *.tgz) tar xvzf $1;;
            *.zip) unzip $1;;
            *.Z) uncompress $1;;
            *.7z) 7za x $1;;
            *.rar) unrar $1;;
            *) echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
cs() { cd "$1" && ls; }
