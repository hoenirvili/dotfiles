let mapleader = ","       " with a map leader it's possible to do extra key combinations
let g:mapleader = ","     " like <leader>w saves the current file

" fast saving
nmap <leader>w :w!<cr>                  

" :W sudo saves the file  (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null     


" make the nerd tree toggle more intuitive
map <leader><tab> :NERDTreeToggle<CR>

noremap J 5j
noremap K 5k

inoremap <c-f> <c-x><c-f>
vnoremap <c-/> :TComment<cr>

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:move_key_modifier = 'C'

"Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

let g:move_key_modifier = 'C'

map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b 
