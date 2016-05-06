call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript'}
Plug 'valloric/MatchTagAlways', {'for': 'html'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'digitaltoad/vim-jade', {'for': 'jade'}
Plug 'stanangeloff/php.vim', {'for': 'php'}

" On-load
Plug 'shawncplus/phpcomplete.vim'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'tomtom/tcomment_vim'
Plug 'matze/vim-move'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'benekastah/neomake'
Plug 'tpope/vim-haml'
Plug 'joonty/vdebug'
Plug 'kien/ctrlp.vim'

" Color scheme switcher
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
call plug#end()

