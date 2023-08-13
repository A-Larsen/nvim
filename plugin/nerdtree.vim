let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.git']
let g:NERDTreeWinPos = 'right'
let NERDTreeMinimalUI=1

nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nd :exec 'NERDTree '.getcwd()<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nF :exec 'NERDTree '.bufname()<cr>
nnoremap <leader>nc :NERDTreeClose<cr>
nnoremap <leader>nb :NERDTreeFromBookmark<Space>
