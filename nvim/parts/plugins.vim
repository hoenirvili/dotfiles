call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'matze/vim-move'
Plug 'uarun/vim-protobuf'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go'}
Plug 'warbear0129/vim-qtpl'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
call plug#end()
