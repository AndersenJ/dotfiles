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
#vim hotkeys
#bindkey -v

# End of lines configured by zsh-newuser-install
#
# Automatically prepend cd when entering a path into shell

export MAKEFLAGS="-j$(expr $(nproc) \+ 1)"

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
source ~/.aliases.sh
