vim.diagnostic.config({virtual_text = true })
-- use ctrl-x ctrl-o to start autocompletion
-- local _border = "single"

vim.lsp.config("eslint", {
  cmd = { "vscode-eslint-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
  },
  root_markers = {
    ".eslintrc",
    ".eslintrc.js",
    ".eslintrc.json",
    "eslint.config.mjs",
    "eslint.config.js",
    "package.json",
  },
  settings = {
    format = false, -- do not fight prettier
  },
})

vim.lsp.enable("eslint")
vim.lsp.enable("clangd")

