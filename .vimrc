syntax off
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"list of plugins
"to install/update/delete a plugin, add it here and run
":PlugInstall/:PlugUpdate/:PlugClean
"run :PlugUpgrade to update vim-plug itself

" Support for various languages
Plug 'groenewege/vim-less'
Plug 'adamclerk/vim-razor'
Plug 'elzr/vim-json'
Plug 'isRuslan/vim-es6'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'digitaltoad/vim-pug'
Plug 'kovisoft/slimv'
Plug 'lervag/vimtex'
Plug 'JuliaLang/julia-vim'
Plug 'sirtaj/vim-openscad'
Plug 'StanAngeloff/php.vim'
Plug 'nvie/vim-flake8'
Plug 'vim-python/python-syntax'
Plug 'posva/vim-vue'

" Rainbow Parentheses
Plug 'luochen1990/rainbow'

" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'

" Allows you to replace the quotes or tags that surround a word
Plug 'tpope/vim-surround'

" Autocomplete; deoplete for nvim and youcompleteme for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/deoplete.nvim'
" Deoplete PHP
"Plug 'phpactor/phpactor'
"Plug 'kristijanhusak/deoplete-phpactor'

" Deoplete many languages
"Plug 'Shougo/neco-syntax'

"if has('nvim')
    "Plug 'Shougo/deoplete.nvim'
"else
    "Plug 'Shougo/deoplete.nvim'
    "Plug 'roxma/nvim-yarp'
    "Plug 'roxma/vim-hug-neovim-rpc'
"endif

" Error checking
"Plug 'dense-analysis/ale'

" Git integration; use :Git instead of :!git
Plug 'tpope/vim-fugitive'

" Other plugins
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'flazz/vim-colorschemes'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-rooter'
Plug 'adragomir/javacomplete'
Plug 'whatyouhide/vim-gotham'
Plug 'vim-airline/vim-airline'
Plug 'severin-lemaignan/vim-minimap'
Plug 'tpope/vim-unimpaired'

" Better python code folding
Plug 'tmhedberg/SimpylFold'

" undotree stuff
Plug 'mbbill/undotree'

call plug#end()
"There may also be other plugins that
"require additional setup.

" Set vim to actually use LaTeX specifically instead of plain TeX or ConTeXt
let g:tex_flavor = 'latex'

set autoindent

" turn on line numbering
set number

" enable true colors
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" tell delimitmate to not screw up my LISP
au FileType lisp let b:delimitMate_quotes = "\""

" set syntax on
syntax on

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" set backspace to work more normally and consistently
set backspace=indent,eol,start

"highlight search
set hls

"wrap text
set lbr

"change colorscheme
"colo af
"colo buttercream
"colo desert
"colo gotham
"colo turbo

"tab width
set tabstop=4
set shiftwidth=4
set expandtab

"set paste to f2
set pastetoggle=<F2>

"undotree start on f3
map <F3> :UndotreeToggle<CR>

"format json on f4
map <F4> :%!python -m json.tool<CR>

"show minimap on f5
map <F5> :Minimap

"j and k will now go down only part of the line if the line is wrapping, as
"with other editors
noremap j gj
noremap k gk

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
" press Sd to disable syntastic
""    :command Sd SyntasticToggleMode
""    set statusline+=%#warningmsg#
""    set statusline+=%{SyntasticStatuslineFlag()}
""    set statusline+=%*
""
""    let g:syntastic_always_populate_loc_list = 1
""    let g:syntastic_auto_loc_list = 1
""    let g:syntastic_check_on_open = 1
""    let g:syntastic_check_on_wq = 0
""
""    function Py2()
""      let g:syntastic_python_python_exec = '/usr/local/bin/python2'
""    endfunction
""
""    function Py3()
""      let g:syntastic_python_python_exec = '/usr/local/bin/python3'
""    endfunction
""
""    call Py3()   " default to Py3 because I try to use it when possible
" Actually, lets use ale for syntax checking and autocomplete instead.
"let g:ale_completion_enabled = 1
let g:airline#extentions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:deoplete#enable_at_startup = 1

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

" Some stuff recommended by coc
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
"use <CR> to select completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"use K to show documentation in preview window
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction


" show relative numbers
set relativenumber

" folding settings
"set foldmethod=syntax
"set fdn=6

" jj to exit insert mode
map! jj <Esc>

" python indentation
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" Python settings
let g:python_highlight_all = 1
let g:python_version_2 = 0

" tab for autocomplete
" Use TAB to complete when typing words, else inserts TABs as usual.
" Uses source files to find matching words to complete.

" See help completion for source,
" Note: usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Window users can copy the file to their machine.
function! Tab_Or_Complete()
	if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

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
