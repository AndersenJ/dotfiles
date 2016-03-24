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
Plugin 'isRuslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'leafgarland/typescript-vim'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides.git'

" Autocomplete; deoplete for nvim and youcompleteme for vim
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'Valloric/YouCompleteMe'
"Note that Valloric YouCompleteMe needs to be compiled. Use:
"First, install cmake, python, nodejs, and npm
"cd ~/.vim/bundle/YouCompleteMe
"./install.py --clang-completer --omnisharp-completer --gocode-completer
"--tern-completer

" Other plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
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
"colo ansi_blows
"colo af
"colo candy
"colo basic
"colo buttercream
colo gotham
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

"undotree start on F3
map <F3> :UndotreeToggle<CR>

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
endif

" show relative numbers
set relativenumber

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
