" Config file by HymiR
" ~/.vimrc

" activate pathogen:
call pathogen#infect()
call pathogen#helptags()

set t_Co=256		" 256 farben für skins erlaubt
colorscheme calmar256-dark 

set nu				"zeilennummern aktivieren
set nowrap			"zeilen nicht umbrechen
set cin				"c-style einrückung
set si				"smartindent
set ai				"autoindent
set ts=3
set sw=3				"tabgröße: 3 spaces
set noet				"tabs in leerzeichen umwandeln
set fo+=r			" turn on comment continuation for C style comments
set showcmd
set cursorline
set ru
set ignorecase
set smartcase
set incsearch
"set autoread
set wildmenu
set wildignore=*.o,*.pyc,*.class
set pumheight=15	" limit popup window to 15 lines
set mouse=n			" activate mouse interaction in normal mode
set history=700

set cot="menu,menuone,longest"			" disable scratch preview


" gentoo-syntax aktivieren...
filetype plugin indent on

"spezielle syntaxhilight-regeln
au BufNewFile,BufRead *.tp		setf php
au BufNewFile,BufRead *.th		setf php
au BufNewFile,BufRead *.jape	setf java
au BufNewFile,BufRead *.cl		setf opencl
au BufNewFile,BufRead *.gapp,*.pom,*.qrc setf xml

" AUTO-COMMANDS
autocmd BufEnter ?akefile*,*.html,*.css,*.th set noci
"autocmd FileType java set omnifunc=javacomplete#Complete  " NOTE Don't knowif this works


" Clang compilation options file for Syntastic (if needed)
" As well as syntastic syntax checker options...
let g:syntastic_c_config_file = '.compiler-opts'
let g:syntastic_cpp_config_file = '.compiler-opts'
let g:syntastic_check_on_open = 1
let g:syntastic_c_checker = 'clang'
let g:syntastic_cpp_compiler = 'clang++'

" Syntastic statusline settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" ycm config stuff
let g:ycm_global_ycm_extra_conf = '~/.ycm_cflags_fallback.py'

" Rainbow parentheses plugin settings:
let g:rainbow_active = 1
let g:rainbow_operators = 1 

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

verbose nmap <leader>f 1G=G
"verbose nmap <leader>fa :%!astyle<CR>:echo "Formatierung mit astyle..."<CR>
