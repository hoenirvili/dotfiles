"=============== Neovim specifics ===================

let g:python3_host_prog='/usr/local/bin/python3'
let g:python3_host_skip_check = 1

" =============== Plug Initialization ===============

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'fatih/vim-go', { 'tag': '*' , 'do': ':GoInstallBinaries', 'for': 'go'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'itchyny/lightline.vim'
Plug 'matze/vim-move'
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'uarun/vim-protobuf'
Plug 'ntpeters/vim-better-whitespace'
Plug 'deoplete-plugins/deoplete-jedi', { 'for': 'python' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make', 'for': 'go'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'

call plug#end()

"============ vim-better-whitespace =================

let g:better_whitespace_enabled=1   "Enable highlighting whitespaces
let g:strip_whitespace_on_save=1    "When I hit save, then strip all unnecessary white spaces

"=============== General ============================
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors               "Enable true colors support
colorscheme nord
let g:nord_italic = 1           "Enable use of italics in nord theme
let g:nord_underline = 1        "Enable use of underline in nord theme
let g:nord_uniform_status_lines = 1
let g:nord_comment_brightness = 15
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
set number
set completeopt-=preview        "Make this lways off because this drives me insane
set completeopt+=noselect
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set noerrorbells                "No annoying sounds on errors
set novisualbell
set textwidth=110               "Maximum columns to be inserted
set colorcolumn=110             "Assign the vertical lign to be at a certain column position
set clipboard=unnamed           "Make the same clipboard with the OS
set laststatus=2
set list                        "Display hidden characters
set listchars=tab:▸\ ,eol:¬     "Use listchars like in textmate
set mouse=a                     "Enable mouse support, forgive me vim father because I have sin
set t_vb=
set tm=500
set autowrite                   "Write file when switching buffers
set formatoptions=qrnj1
set fileformats=unix,dos,mac
set updatetime=300              "Smaller updatetime for CursorHold & CursorHoldI
set bomb
set binary
set ffs=unix,dos,mac            "Use Unix as the standard file type
let $LANG='en'                  "Avoid garbled characters in Chinese language windows OS
set langmenu=en
set showmatch                   "Show matching brackets when text indicator is over them
set lazyredraw                  "Don't redraw while executing macros (good performance config)
set magic                       "For regular expressions turn magic on
set mat=2                       "How many tenths of a second to blink when matching brackets
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
" I type Wq more often than wq
cmap Wq wq
cmap W w
set undofile
set undodir=/tmp                "Don't use xdg path use this instead

set smartindent                 "Do smart autoindenting when starting a new line
set softtabstop=4               "Number of spaces that a <Tab> counts for while performing editing ops
set shiftwidth=4
set tabstop=4                   "Number of spaces that a <Tab> in the file counts for
set expandtab                   "Use the appropiate number of spaces to insert a <Tab> in insert mode

filetype plugin on              "Enable filetype plugins
filetype indent on

set lbr                         "Linebreak on 500 characters
set wrap                        "Enable wrap mode

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
"
" ================ Search ===========================

" Always when search ignore casing for down case characters
nnoremap / /\v
vnoremap / /\v
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default<Plug>_

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Completion =======================

set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif<Plug>

"================= Deoplete =========================

set runtimepath+=~/.local/share/nvim/site/deoplete.nvim
let g:deoplete#auto_complete_delay = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH . '/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

"================= Mapping ==========================
" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","
let maplocalleader = "\\"
inoremap <c-f> <c-x><c-f>
vnoremap <c-/> :TComment<cr>
vmap < <gv
vmap > >gv
let g:move_key_modifier = 'C'
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
nnoremap <C-p> :FZF<cr>
" Fast saving
nmap <leader>w :w!<cr>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nmap <Leader>o :setlocal spell! spelllang=en_us<CR>

" Better vertical movement for wrapped lines
nnoremap j gj
nnoremap k gk

" quickly cancel search highlighting
nnoremap <leader><space> :nohlsearch<cr>

" Toggle between column widths
nnoremap <leader>f :call ToggleColumnWidth()<cr>
let g:wide_column = 1
function! ToggleColumnWidth()
    if g:wide_column
        set textwidth=80
        set colorcolumn=80
        let g:wide_column = 0
    else
        set textwidth=110
        set colorcolumn=110
        let g:wide_column = 1
    endif
endfunction

" ============= smarttab ===========================

let g:SuperTabDefaultCompletionType = "<c-n>"

" ============= vim-go =============================

let g:go_fmt_command = "goimports"
" metalinter
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet',]
let g:go_metalinter_enabled = ['govet', 'errcheck']
let g:go_metalinter_disabled = ['golint']

" go def
let g:go_def_mode = 'godef'
let g:go_asmfmt_autosave = 1

let g:go_highlight_function_arguments=1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_generate_tags = 1

let g:go_def_mapping_enabled = 1
let g:go_fmt_fail_silently = 1
let g:go_term_enabled = 1
let g:go_addtags_transform = "snakecase"

autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"================ lightline =========================
let g:lightline = {
\ 'colorscheme': 'nord',
\ }
