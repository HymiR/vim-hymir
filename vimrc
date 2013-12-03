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
set showcmd
set pumheight=15	" limit popup window to 15 lines
set mouse=n			" activate mouse interaction in normal mode

set cot="menu,menuone,longest"			" disable scratch preview


" gentoo-syntax aktivieren...
filetype plugin indent on

"spezielle syntaxhilight-regeln
au BufNewFile,BufRead *.tp		setf php
au BufNewFile,BufRead *.th		setf php
au BufNewFile,BufRead *.jape	setf java
au BufNewFile,BufRead *.g4		setf antlr
au BufNewFile,BufRead *.gapp,*.pom,*.qrc	setf xml
"au BufNewFile,BufRead *.cl set ft=opencl

" AUTO-COMMANDS
autocmd BufEnter ?akefile*,*.html,*.css,*.th set noci
"autocmd FileType java set omnifunc=javacomplete#Complete  " NOTE Don't knowif this works

" SuperTab option for context aware completion
"let g:SuperTabDefaultCompletionType = "context"

" defs for clang_complete plugin
"let g:clang_use_library = 1
"let g:clang_library_path = '/usr/lib/llvm'
"let g:clang_snippets = 1
""let g:clang_user_options = '-nobuildininc -O4' " 2>/dev/null || exit 0'
"let g:clang_complete_auto = 1
"let g:clang_complete_copen = 1
"let g:clang_complete_macros = 1
"let g:clang_complete_patterns = 1
"let g:clang_auto_select = 1

" Clang compilation options file for Syntastic (if needed)
" As well as syntastic syntax checker options...
let g:syntastic_c_config_file = '.compiler-opts'
let g:syntastic_cpp_config_file = '.compiler-opts'
let g:syntastic_check_on_open = 1
"let g:syntastic_c_checker = 'clang'
let g:syntastic_cpp_compiler = 'clang++'

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
