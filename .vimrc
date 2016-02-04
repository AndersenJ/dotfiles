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
 
" Vundle Plugin
Plugin 'VundleVim/Vundle.vim'

" Support for various languages
Plugin 'groenewege/vim-less'
Plugin 'adamclerk/vim-razor'
Plugin 'isRuslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
Plugin 'hail2u/vim-css3-syntax.git'

" Other plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'flazz/vim-colorschemes'
Plugin 'SirVer/ultisnips.git'
Plugin 'Yggdroot/indentLine.git'
Plugin 'Raimondi/delimitMate.git'
Plugin 'airblade/vim-rooter.git'
Plugin 'adragomir/javacomplete'
Plugin 'whatyouhide/vim-gotham'
Plugin 'vim-airline/vim-airline'
Plugin 'mbbill/undotree'

call vundle#end()
"}
"Note that Valloric YouCompleteMe needs to be compiled. Use:
"First, install cmake, python, nodejs, and npm
"cd ~/.vim/bundle/YouCompleteMe
"./install.py --clang-completer --omnisharp-completer --gocode-completer
"--tern-completer
"There may also be other plugins that
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
set t_Co=256
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

" for gdb integration, use pyclewn.
" sudo apt-get install python-pip
" [commands to install clewn here]
" sudo pip install pyclewn
" python -c "import clewn; clewn.get_vimball()"
" vim -S pyclewn-2.2.vmb

" make vim remember longer registers for yy and p
set viminfo='100,<500,s50

"undotree start on F3
map <F3> :UndotreeToggle<CR>

" set folding to indent mode
set foldmethod=indent