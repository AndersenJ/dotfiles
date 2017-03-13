rm ~/.vimrc 2> /dev/null
rm ~/.bashrc 2> /dev/null
rm ~/.emacs 2> /dev/null
rm ~/.profile 2> /dev/null
rm ~/.vimperatorrc 2> /dev/null
rm ~/.gitconfig 2> /dev/null
rm ~/.xinitrc 2> /dev/null
rm ~/.Xresources 2> /dev/null
rm ~/.i3/config 2> /dev/null
rm ~/.muttrc 2> /dev/null
rm ~/.aliases.sh 2> /dev/null
#rm ~/.zshrc 2> /dev/null
mkdir ~/.i3 2> /dev/null
mkdir ~/.config 2> /dev/null
mkdir ~/.config/xfce4 2> /dev/null
mkdir ~/.config/xfce4/terminal 2> /dev/null
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
cp ~/dotfiles/.aliases.sh ~/
#cp ~/dotfiles/.zshrc ~/
vim +PluginClean +PluginUpdate +qall
