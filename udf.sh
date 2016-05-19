rm ~/.vimrc
rm ~/.bashrc
rm ~/.emacs
rm ~/.profile
rm ~/.vimperatorrc
rm ~/.gitconfig
rm ~/.xinitrc
rm ~/.Xresources
cp ~/dotfiles/.vimrc ~/
cp ~/dotfiles/.bashrc ~/
cp ~/dotfiles/.emacs ~/
cp ~/dotfiles/.profile ~/
cp ~/dotfiles/.vimperatorrc ~/
cp ~/dotfiles/.gitconfig ~/
cp ~/dotfiles/.xinitrc ~/
cp ~/dotfiles/.Xresources ~/
vim +PluginClean +PluginUpdate +qall
source ~/.bashrc
