" to install Vundle, run git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" needed to run vundle{
set nocompatible
filetype plugin indent off
syntax off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"list of plugins
"to install/update/delete a plugin, add it here and run
":PluginInstall/:PluginUpdate/:PluginClean
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic.git'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'isRuslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'SirVer/ultisnips.git'
Plugin 'Yggdroot/indentLine.git'
Plugin 'Raimondi/delimitMate.git'
Plugin 'airblade/vim-rooter.git'
Plugin 'adragomir/javacomplete'
Plugin 'molok/vim-smartusline'

call vundle#end()
"}
"Note that Valloric needs to be compiled. There may also be other plugins that
"require additional setup.

filetype plugin indent on
set autoindent

" turn on line numbering
set number

" set syntax on
syntax on

"highlight search
set hls

"wrap text
set lbr

"change colorscheme
colo ansi_blows
"colo af
"colo candy
"colo basic
"colo buttercream
"colo turbo

"tab width of 4
set tabstop=4

"set paste to f2
set pastetoggle=<F2>

set background=dark

" this is for eclim compatibility
set nocompatible
filetype plugin indent on

" always know the location of the cursor
set ruler

" no annoying sounds when errors happen
set noerrorbells

" something something regular expressions
set magic

" This is for syntastic to work properly for syntax checking
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

" Autocomplete for CSS
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" make NerdTree hotkey
map <C-n> :NERDTreeToggle<CR>
