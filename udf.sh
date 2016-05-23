rm ~/.vimrc
rm ~/.bashrc
rm ~/.emacs
rm ~/.profile
rm ~/.vimperatorrc
rm ~/.gitconfig
rm ~/.xinitrc
rm ~/.Xresources
rm ~/.i3/config
rm ~/.config/xfce4/terminal/terminalrc
rm ~/.muttrc
mkdir ~/.i3
mkdir ~/.config
mkdir ~/.config/xfce4
mkdir ~/.config/xfce4/terminal
cp ~/dotfiles/.i3/config ~/.i3/config
cp ~/dotfiles/.vimrc ~/
cp ~/dotfiles/.bashrc ~/
cp ~/dotfiles/.emacs ~/
cp ~/dotfiles/.profile ~/
cp ~/dotfiles/.vimperatorrc ~/
cp ~/dotfiles/.gitconfig ~/
cp ~/dotfiles/.xinitrc ~/
cp ~/dotfiles/.Xresources ~/
cp ~/dotfiles/.config/xfce4/terminal/terminalrc ~/.config/xfce4/terminal/terminalrc
cp ~/dotfiles/.muttrc ~/
vim +PluginClean +PluginUpdate +qall
source ~/.bashrc
