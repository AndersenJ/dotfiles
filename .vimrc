" to install Vundle, run git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" needed to run vundle{ set nocompatible filetype plugin indent off
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
Plugin 'elzr/vim-json'
Plugin 'isRuslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'leafgarland/typescript-vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'kovisoft/slimv'
Plugin 'lervag/vimtex'
Plugin 'JuliaLang/julia-vim'

" Rainbow Parentheses
Plugin 'luochen1990/rainbow'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides.git'

" Autocomplete; deoplete for nvim and youcompleteme for vim
Plugin 'Shougo/deoplete.nvim'
"Plugin 'Valloric/YouCompleteMe'
"Note that Valloric YouCompleteMe needs to be compiled. Use:
"First, install cmake, python, nodejs, and npm
"cd ~/.vim/bundle/YouCompleteMe
"./install.py --clang-completer --omnisharp-completer --gocode-completer

" Other plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'flazz/vim-colorschemes'
Plugin 'Yggdroot/indentLine.git'
Plugin 'Raimondi/delimitMate.git'
Plugin 'airblade/vim-rooter.git'
Plugin 'adragomir/javacomplete'
Plugin 'whatyouhide/vim-gotham'
Plugin 'vim-airline/vim-airline'

" undotree stuff
Plugin 'mbbill/undotree'

call vundle#end()
"}
"There may also be other plugins that
"require additional setup.

filetype plugin indent on
set autoindent

" turn on line numbering
set number

" tell delimitmate to not screw up my LISP
au FileType lisp let b:delimitMate_quotes = "\""

" set syntax on
syntax on

" set backspace to work more normally and consistently
set backspace=indent,eol,start

"highlight search
set hls

"wrap text
set lbr

"change colorscheme
"colo ansi_blows
"colo af
"colo candy
"colo basic
"colo buttercream
colo desert
"colo gotham
"colo turbo

"tab width
set tabstop=2
set shiftwidth=2
set expandtab

"set paste to f2
set pastetoggle=<F2>

"j and k will now go down only part of the line if the line is wrapping, as
"with other editors
noremap j gj
noremap k gk

"undotree start on F3
map <F3> :UndotreeToggle<CR>

"rainbow parentheses settings
let g:rainbow_active = 1

let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

set background=dark

" always know the location of the cursor
set ruler

" no annoying sounds when errors happen
set noerrorbells

" something something regular expressions
set magic

" swap file rotation frequency (by keystroke)
set updatecount=25

" This is for syntastic to work properly for syntax checking
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

" Autocomplete for CSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

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

"Persistent Undo
if has('persistent_undo')
		set undolevels=5000
		set undodir=$HOME/.VIM_UNDO_FILES
		set undofile
endif
		
" map <esc> and <C-[> to exit terminal mode on neovim
if has ('nvim')
		tnoremap <Esc> <C-\><C-n>
		tnoremap <C-[]> <C-\><C-n>
		set mouse=
    let g:deoplete#enable_at_startup = 1
endif

" show relative numbers
set relativenumber

" folding settings
set foldmethod=syntax
set fdn=6

" jj to exit insert mode
map! jj <Esc>

"testing stuff
		" For jpegs
		autocmd BufReadPre *.jpg,*.jpeg silent set ro
		autocmd BufReadPost *.jpg,*.jpeg silent %!jp2a --width=78 "%"
		" " For other image formats
		autocmd BufReadPre *.png,*.gif,*.bmp silent set ro
		autocmd BufReadPost *.png,*.gif,*.bmp silent %!convert "%" jpg:- | jp2a --width=78 -

		"multiple column scrolling cool thingy
		fun! s:scroll()
				let l:save = &scrolloff
				set scrolloff=0 noscrollbind nowrap nofoldenable
				botright vsplit
				normal L
				normal j
				normal zt
				setlocal scrollbind
				exe "normal \<c-w>p"
				setlocal scrollbind

				let &scrolloff = l:save
		endfun
		command! Scroll call s:scroll()

		"weird rotate line screensaver
		"Press \r to start rotating lines and <C-c> (Control+c) to stop.
		function! s:RotateString(string)
			let split_string = split(a:string, '\zs')
			return join(split_string[-1:] + split_string[:-2], '')
		endfunction

		function! s:RotateLine(line, leading_whitespace, trailing_whitespace)
			return substitute(
				\ a:line,
				\ '^\(' . a:leading_whitespace . '\)\(.\{-}\)\(' . a:trailing_whitespace . '\)$',
				\ '\=submatch(1) . <SID>RotateString(submatch(2)) . submatch(3)',
				\ ''
			\ )
		endfunction

		function! s:RotateLines()
			let saved_view = winsaveview()
			let first_visible_line = line('w0')
			let last_visible_line = line('w$')
			let lines = getline(first_visible_line, last_visible_line)
			let leading_whitespace = map(
				\ range(len(lines)),
				\ 'matchstr(lines[v:val], ''^\s*'')'
			\ )
			let trailing_whitespace = map(
				\ range(len(lines)),
				\ 'matchstr(lines[v:val], ''\s*$'')'
			\ )
			try
				while 1 " <C-c> to exit
					let lines = map(
						\ range(len(lines)),
						\ '<SID>RotateLine(lines[v:val], leading_whitespace[v:val], trailing_whitespace[v:val])'
					\ )
					call setline(first_visible_line, lines)
					redraw
					sleep 50m
				endwhile
			finally
				if &modified
					silent undo
				endif
				call winrestview(saved_view)
			endtry
		endfunction

		nnoremap <silent> <Plug>(RotateLines) :<C-u>call <SID>RotateLines()<CR>

		nmap \r <Plug>(RotateLines)
