let s:fontsize = 12
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! Consolas:h" . s:fontsize
endfunction

function! SetFontSize(amount)
  let s:fontsize = a:amount
  :execute "GuiFont! Consolas:h" . s:fontsize
endfunction

if has("win32")
    nnoremap <c-z> <nop>
endif

noremap <silent> <C-=> :call AdjustFontSize(1)<CR><c-w>=
noremap <silent> <C--> :call AdjustFontSize(-1)<CR><c-w>=
inoremap <silent> <C-+> <Esc>:call AdjustFontSize(1)<CR><c-w>=a
inoremap <silent> <C--> <Esc>:call AdjustFontSize(-1)<CR><c-w>=a
inoremap <silent> <C-0> <Esc>:call SetFontSize(10)<cr><c-w>=a
nnoremap <silent> <C-0> :call SetFontSize(10)<cr><c-w>=
" autocmd BufEnter,BufRead,BufNewFile *.lua :bufdo lua vim.diagnostic.disable()<cr>
" " Terminal Buffer
"
function! TerminalSettings()
    setlocal nonumber
    setlocal norelativenumber
    normal a
endfunction

autocmd TermOpen * call TerminalSettings()
