call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'for': ['go'], 'do': ':GoInstallBinaries' }
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'craigemery/vim-autotag'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

call plug#end()
