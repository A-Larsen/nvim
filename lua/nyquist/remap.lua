vim.g.mapleader = ","

-- souringing text with _
vim.keymap.set("v", "s\"", "c\"<C-r>\"\"", {silent = true})
vim.keymap.set("v", "s'", "c'<C-r>\"'", {silent = true})
vim.keymap.set("v", "s`", "c`<C-r>\"`", {silent = true})
vim.keymap.set("v", "s(", "c(<C-r>\")", {silent = true})
vim.keymap.set("v", "s[", "c[<C-r>\"]", {silent = true})
vim.keymap.set("v", "s{", "c{<C-r>\"}", {silent = true})
vim.keymap.set("v", "s*", "c*<C-r>\"*", {silent = true})
vim.keymap.set("v", "s=", "c=<C-r>\"=", {silent = true})
vim.keymap.set("v", "s~", "c~<C-r>\"~", {silent = true})

-- insert cursor movement
vim.keymap.set("i", "<c-b>", "<Esc>O")
vim.keymap.set("i", "<c-f>", "<Esc>A<Enter>")
vim.keymap.set("i", "<c-v>", "<Esc>A")
vim.keymap.set("n", "<leader>Dd", "<cmd>call Debug()<CR>")

--tabs
vim.keymap.set("t", "<c-t>N", "<c-w><cmd>tabnew<CR>")
vim.keymap.set("n", "<c-t>N", "<cmd>tabnew<CR>")
vim.keymap.set("t", "<c-t>n", "<c-w><cmd>tabnext<CR>")
vim.keymap.set("t", "<c-t>p", "<c-w><cmd>tabprev<CR>")
vim.keymap.set("n", "<c-t>n", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<c-t>p", "<cmd>tabprev<CR>")

-- save the buffer
vim.keymap.set("n", "<leader>W", "<cmd>w!<CR>")

-- help registers
vim.keymap.set("v", "<c-c>", "\"+y | call system('xclip -selection clipboard -i', @0)")

-- run test programs
vim.keymap.set("n", "<leader>rt", ":bel split | set norelativenumber | set nonumber | term runtst %:p:h<CR> | :normal Gi<CR>")

-- quick search and replace
vim.keymap.set("n", "<leader>s", "ye*Ncgn")

-- quick quit window
vim.keymap.set("n", "<c-w>q", "<cmd>q!<CR>")
vim.keymap.set("n", "/", "<cmd>set hlsearch<cr>/")

-- turning on and off options
vim.keymap.set("n", "<c-o>s", "<cmd>set smartcase!<CR><cmd>set smartcase?<CR>")
vim.keymap.set("n", "<c-o>i", "<cmd>set ignorecase!<cr><cmd>set ignorecase?<cr>")
vim.keymap.set("n", "<c-o>l", "<cmd>set list!<CR><cmd>set list?<cr>")
vim.keymap.set("n", "<c-o>h", "<cmd>set hlsearch!<cr><cmd>set hlsearch?<cr>")

-- move a block of code as one
vim.keymap.set("v", "J", "<cmd>m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", "<cmd>m '<-2<CR>gv=gv")

-- when going through searches, keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- makes the current file executable and runs the file
vim.keymap.set("n", "<leader>x", "<cmd>python %<cr>")
