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
