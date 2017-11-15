syntax enable           " enable syntax highlighting
set number              " show line numbers
set ts=4                " set tabs to have 4 spaces
set autoindent          " indent when moving to the next line while writing code
set expandtab           " expand tabs into spaces
set shiftwidth=4        " when using the >> or << commands, shift lines by 4 spaces
set tabstop=4
set shiftround
"set cursorline          " show a visual line under the cursor's current line
set showmatch           " show the matching part of the pair for [] {} and ()
set history=500         " sets how many lines of history VIM has to remember
filetype plugin on      " enable filetype plugins
filetype indent on
set autoread            " set to auto read when a file is changed from the outside
set so=7                " set 7 lines to the cursor - when moving vertically using j/k
set ruler               " always show current position
set wildmenu            " turon on wildmenu
set cmdheight=1         " height of the command bar
set hid                 " a buffer becomes hidden when it is abandoned
set ignorecase          " ignore case when searching
set smartcase           " when searching try to be smart about cases
set hlsearch            " highlight search results
set incsearch           " makes search act like search in modern browsers
set lazyredraw          " don't redraw while executing macros (good performance config)
set magic               " for regular expressions turn magic on
set showmatch           " show matching brackets when text indicator is over them
set mat=2               " how many tenths of a second to blink when matching brackets
"set foldcolumn=1        " add a bit extra margin to the left
set encoding=utf8       " set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac    " use Unix as the standard file type
set smarttab            " be smart when using tabs ;)
set lbr                 " linebreak on 500 characters
set tw=500
set pastetoggle=<F2>    " make pasting mode sane
set clipboard=unnamed
set mouse=a             " mouse and backspace
set bs=2
set ai                  " auto indent
set si                  " smart indent
set wrap                " wrap lines
set laststatus=2        " always show the status line
set t_Co=256            " enable 256 colors palette 
try
    colorscheme github
catch
endtry

"set list
"set listchars=tab:▸\ ,eol:¬

"set background=light

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set nowritebackup

set spell spelllang=en_us

" Remember cursor positions
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
