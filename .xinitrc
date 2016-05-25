[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3
setxkbmap us -variant colemak
