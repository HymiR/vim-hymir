" Config file by HymiR
" ~/.vimrc

" activate pathogen:
call pathogen#infect()
call pathogen#helptags()

set t_Co=256		" 256 farben für skins erlaubt
colorscheme hymir

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
set laststatus=2	" always enable statusline
set exrc				" allow .vimrc reading within current dir

set cot="menuone, longest"			" disable scratch preview


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


" Clang compilation options file for Syntastic (if needed)
" As well as syntastic syntax checker options...
"let g:syntastic_c_config_file = '.compiler-opts'
"let g:syntastic_cpp_config_file = '.compiler-opts'
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall'
let g:syntastic_cpp_check_header = 1
" let g:syntastic_cpp_remove_include_errors = 1

" Syntastic statusline settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*


" ycm config stuff
let g:ycm_global_ycm_extra_conf = '~/.ycm_cflags_fallback.py'
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1



" Rainbow parentheses plugin settings:
let g:rainbow_active = 1
let g:rainbow_operators = 1 

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

verbose nmap <leader>f 1G=G
"verbose nmap <leader>fa :%!astyle<CR>:echo "Formatierung mit astyle..."<CR>
