export VISUAL="vim"
#set -o vi

export MAKEFLAGS="-j$(expr $(nproc) \+ 1)"
