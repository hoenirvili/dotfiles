" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set noerrorbells                "No annoying sounds on errors
set novisualbell
set t_vb=
set tm=500
set autowrite                   "When :make write the file
set autoread                    "Reload files changed outside vim
set encoding=utf8               "Set utf8 as standard encoding and en_US as the standard language
set fileencoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
set bomb
set binary
set ttyfast
set ffs=unix,dos,mac            "Use Unix as the standard file type
let $LANG='en'                  "Avoid garbled characters in Chinese language windows OS
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set showmatch                   "Show matching brackets when text indicator is over them
set lazyredraw                  "Don't redraw while executing macros (good performance config)
set ruler                       "Always show current position
set magic                       "For regular expressions turn magic on
set mat=2                       "How many tenths of a second to blink when matching brackets


" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" =============== Plug Initialization ===============

call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'tpope/vim-fugitive'
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tomasr/molokai'
Plug 'fatih/vim-go', {'for':['go']}
Plug 'lervag/vimtex', {'for':['tex']}
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'

call plug#end()

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" =============== Colorscheme =======================
set t_Co=256            "enable 256 colors palette
set background=dark     "set background color
let g:rehash256 = 1     "use the 256 molokai color palette
set termguicolors
if &term =~ '256color'  "set terminal colorscheme issue
  set t_ut=
endif
colorscheme molokai
" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on      "enable filetype plugins
filetype indent on

set lbr                 "linebreak on 500 characters
set tw=500
set ai                  "auto indent
set si                  "smart indent
set wrap                "wrap lines

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
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

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" Remember cursor positions
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
	    \ endif

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

"================= Mapping =========================

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
map <Leader>f :b 
" Fast saving
nmap <leader>w :w!<cr> 

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nmap <Leader>o :setlocal spell! spelllang=en_us<CR>



" ========== YouCompleteMe settings =================
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '❗'
let g:ycm_global_ycm_extra_conf = '/home/hoenir/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_strings = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
\ }

" ============= vim-go =============================
let g:go_fmt_command = "goimports"
let g:go_disable_autoinstall = 0
let g:go_metalinter_autosave = 1
let g:go_metalinter_enabled = ['govet', 'golint', 'errcheck']
let g:go_def_mode = 'godef'
let g:go_highlight_types = 1
let g:go_highlight_interfaces = 1
let g:go_term_enabled = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  
let g:go_highlight_extra_types = 1


" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

"===================== latex ==================
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_disable_version_warning=1
let g:vimtex_syntax_minted = [
          \ {
          \   'lang' : 'c',
          \ },
          \ {
          \   'lang' : 'cpp',
          \   'environments' : ['cppcode', 'cppcode_test'],
          \ },
          \ {
          \   'lang' : 'csharp',
          \   'syntax' : 'cs'
          \ },
          \ {
          \   'lang' : 'python',
          \   'ignore' : [
          \     'pythonEscape',
          \     'pythonBEscape',
          \     ],
          \ },
          \ {
          \   'lang': 'javascript'
          \ }
\]
"===================== ale =====================
let g:ale_completion_enabled = 0            " Enable completion where available.
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1    " Set this. Airline will handle the rest.
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0                 " if you don't want linters to run on opening a file
"

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
