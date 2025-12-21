" https://devhints.io/vimscript
function! DebugFunc(file)
    silent only
    let l:file = expand("%:p:h") . "/" . a:file
    exec "Termdebug" . l:file
    exec "norm! \<C-w>j"
    exec "norm! \<C-w>j"
    exec "norm! \<C-w>L"
endfunction


function! MatchFilesFunc(pmatch, pfiles)
    QuickFixOpen
    exec "vim /" . a:pmatch . "/ `find . -type f -name \"" . a:pfiles . "\"`"
    copen
endfunction

function! ToggleQuickfix()
   NERDTreeClose 
  " Check if any window is a quickfix window
    if exists('*getwininfo')
        let l:quickfix_wins = filter(getwininfo(), 'v:val.quickfix')
        if !empty(l:quickfix_wins)
          " Quickfix is open: close it
            cclose
            return
        endif
    endif
    " Quickfix is closed: open it (if there are items)
    if len(getqflist()) > 0
        copen 10  " Open with height 10 (adjust as needed)
    else
        echom "Quickfix list is empty: cannot open."
    endif
endfunction

function TerminalOpen()
    bel terminal
    resize 12
    set nobl
endfunction

command! -nargs=1 Debug call DebugFunc(<q-args>)
command! -nargs=0 QuickFixOpen NERDTreeClose | silent only
command! -nargs=* MatchFiles call MatchFilesFunc(<f-args>)

autocmd VimEnter * call TerminalOpen()
