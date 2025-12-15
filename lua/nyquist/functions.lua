vim.cmd[[

" https://devhints.io/vimscript
function DebugFunc(file)
    only
    let l:file = expand("%:p:h") . "/" . a:file
    exec "Termdebug" . l:file
    exec "norm! \<C-w>j"
    exec "norm! \<C-w>j"
    exec "norm! \<C-w>L"

endfunction

command! -nargs=1 Debug :call DebugFunc(<q-args>)

]]
