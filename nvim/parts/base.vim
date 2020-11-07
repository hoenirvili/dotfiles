filetype plugin on
filetype plugin indent on
let g:python3_host_prog='/usr/bin/python'
let g:python3_host_skip_check = 1
colorscheme dracula
let g:dracula_italic = 0
set noerrorbells
set novisualbell
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set completeopt-=preview
set completeopt+=noselect
set nobackup
set nowritebackup
set noswapfile
set nowb
set updatetime=300
set shortmess+=c
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set termguicolors
set background=dark
set hidden
set list
set listchars=tab:▸\ ,eol:¬
set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos,mac
let $LANG='en'
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif<Plug>
set clipboard=unnamedplus
set gcr=a:blinkon0
set noshowmode
set mouse=n

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
