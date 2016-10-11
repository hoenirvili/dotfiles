set nocompatible
syntax on
"[set background=dark
set termguicolors
colorscheme dracula
set noshowmode
set noswapfile
set nowb
filetype on
filetype plugin indent on
set tabstop=4 shiftwidth=4 softtabstop=4
set smartindent
set autoindent
set smarttab
set incsearch
set hlsearch
set ignorecase
set smartcase
set ts=4
set t_Co=256
set t_ut=
set title
set virtualedit=
set wildmenu
set noundofile
set laststatus=2
set wrap linebreak nolist
set wildmode=full
set pastetoggle=<F2>
set number
set completeopt-=preview
" make the vim v-split slit on the right instead of left
set splitbelow
set splitright
"set colorcolumn=80
set list
set listchars=tab:▸\ ,eol:¬
set encoding=utf-8

" remember cursor positions
autocmd BufReadPost *
			\ if line("'\"") > 0 && line ("'\"") <= line("$") |
			\   exe "normal! g'\"" |
			\ endif

autocmd BufRead * normal zz

" make vim ignore stuff wheb tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
