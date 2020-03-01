"=============== Neovim specifics ===================

let g:python3_host_prog='/usr/local/bin/python3'
let g:python3_host_skip_check = 1

" =============== Plug Initialization ===============

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'matze/vim-move'
Plug 'uarun/vim-protobuf'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Rigellute/rigel'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

"============ vim-better-whitespace =================

let g:better_whitespace_enabled=1   "Enable highlighting whitespaces
let g:strip_whitespace_on_save=1    "When I hit save, then strip all unnecessary white spaces
let g:strip_whitespace_confirm=0    "Don't ever ask me

"=============== General ============================
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
colorscheme rigel
let g:rigel_airline = 1
let g:airline_theme = 'rigel'
let g:airline_powerline_fonts = 1

set completeopt-=preview        "Make this lways off because this drives me insane
set completeopt+=noselect
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set noerrorbells                "No annoying sounds on errors
set novisualbell
set textwidth=100               "Maximum columns to be inserted
"set colorcolumn=120              "Assign the vertical lign to be at a certain column position
set clipboard=unnamed           "Make the same clipboard with the OS
"set laststatus=2
"set number
"set list                        "Display hidden characters
"set listchars=tab:▸\ ,eol:¬     "Use listchars like in textmate
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
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
" I type Wq more often than wq
cmap Wq wq
"cmap W w
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
set nowritebackup
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
map <Leader>z :bprev<Return>
map <Leader>x :bnext<Return>
map <Leader>c :bd<Return>
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

" ============= vim-go =============================

let g:go_fmt_command = "goimports"

" go def
let g:go_def_mode = 'godef'
let g:go_asmfmt_autosave = 1

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

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

"========================== coc.vim ===============================


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
