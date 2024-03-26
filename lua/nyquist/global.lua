vim.g.pymode_python = 'python3'
vim.opt.list = false
vim.opt.listchars = { tab = ">.", trail = ".", extends = "#", nbsp = "." }
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorColumn", {ctermbg=8})
vim.api.nvim_set_hl(0, "CursorLine", {ctermbg=8})
vim.opt.conceallevel = 3
vim.opt.relativenumber = true
vim.opt.showtabline = 2
vim.opt.number = true
vim.opt.foldcolumn = "1"
vim.opt.tabstop = 4
vim.opt.softtabstop= 0
vim.opt.expandtab = true
vim.opt.shiftwidth=4
vim.opt.smarttab = true
vim.opt.wrap = false
vim.opt.textwidth=80
vim.opt.termguicolors = true

vim.cmd[[
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

function! GitPush()
    let msg = input("commit message: ")
    call system("git add .")
    call system("git commit -m '" . msg . "'")
    let branch = system("git branch --show-current")
    call inputrestore()
    echo system("git push origin " . branch)
endfunction



noremap <silent> <C-=> :call AdjustFontSize(1)<CR><c-w>=
noremap <silent> <C--> :call AdjustFontSize(-1)<CR><c-w>=
inoremap <silent> <C-+> <Esc>:call AdjustFontSize(1)<CR><c-w>=a
inoremap <silent> <C--> <Esc>:call AdjustFontSize(-1)<CR><c-w>=a
inoremap <silent> <C-0> <Esc>:call SetFontSize(10)<cr><c-w>=a
nnoremap <silent> <C-0> :call SetFontSize(10)<cr><c-w>=
nnoremap <silent> <leader>gr :call system("git reset --hard") \| set undoreload=0 \| edit <cr>
nnoremap <silent> <leader>gp :call GitPush()<cr>
" autocmd BufEnter,BufRead,BufNewFile *.lua :bufdo lua vim.diagnostic.disable()<cr>
]]
