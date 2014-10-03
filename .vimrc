set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 8
set laststatus=2

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

Bundle 'https://github.com/Yggdroot/indentLine.git'

Bundle 'klen/python-mode'
" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
"
" " Support virtualenv
let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" " syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " Don't autofold code
let g:pymode_folding = 0

Bundle 'https://github.com/mileszs/ack.vim.git'
nmap <F4> <Esc>:Ack!
Bundle 'https://github.com/sjl/gundo.vim.git'
map <F3> :GundoToggle<CR>
Bundle 'https://github.com/vim-scripts/TaskList.vim.git'
map <F5> <Plug>TaskList




" The rest of your config follows here

filetype plugin indent on
syntax on

set modeline
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

augroup vimrc_autocmds
    autocmd!
    "highlight characters past column 80
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" " automatically change window's cwd to file's dir
set autochdir
"
" " more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold    
endif

nnoremap tp :tabp<CR>
nnoremap tn :tabn<CR>
nnoremap te :tabe<SPACE>

let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1

let g:indentLine_char = '¦'
" You can also use one of ¦, ┆, ︙ or │ 

set foldmethod=indent
set foldlevel=99
