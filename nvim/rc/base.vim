syntax on
"colorscheme blackboard
colorscheme spiderhawk
set nocompatible
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set noshowmode
set noswapfile
set nowb
filetype on
filetype plugin indent on
set tabstop=4 shiftwidth=4 softtabstop=4
set smartindent
set autoindent
set smarttab
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set virtualedit=
set wildmenu
set laststatus=2
set wrap linebreak nolist
set wildmode=full
set undofile
set undodir="$HOME/.config/.VIM_UNDO_FILES"
set pastetoggle=<F2>
"set number
set completeopt-=preview

" remeber cursor position between vim sessions
autocmd BufReadPost *
			\ if line("'\"") > 0 && line ("'\"") <= line("$") |
			\   exe "normal! g'\"" |
			\ endif
			" center buffer aroundcursor when opening files
autocmd BufRead * normal zz

let g:gitgutter_max_signs = 1000 "default value

" noneed for ex mode
nnoremap Q <nop>
" no need for macros
map q <Nop>

" spellcheck on markdown
autocmd BufRead,BufNewFile *.md setlocal spell complete+=kspell
let g:python_host_prog = '/usr/bin/python2.7'
autocmd! BufWritePost * Neomake
let g:neomake_javascript_jshint_maker = {
	\ 'args': ['--verbose'],
	\ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
	\ }
let g:neomake_javascript_enabled_makers = ['jshint']
let b:javascript_enable_domhtmlcss=1

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
"php syntax
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
	autocmd!
	autocmd FileType php call PhpSyntaxOverride()
augroup END

"set list
"set listchars=tab:▸\ ,eol:¬

set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

let php_sql_query=1
let php_htmlInStrings=1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_term_mode = "split"
let g:go_term_enabled = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" make vim split make sense
set splitbelow
set splitright
