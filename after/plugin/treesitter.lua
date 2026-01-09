require("nvim-treesitter.configs").setup({
  ensure_installed = { "javascript", "html", "c", "lua", "vim", "bash"},  -- parsers you want
  highlight = {
    enable = true,                         -- ✅ this must be true
    additional_vim_regex_highlighting = false, -- optional
  },
  indent = { enable = true },             -- optional
})

