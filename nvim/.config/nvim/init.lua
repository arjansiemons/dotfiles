-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--require catppuccin
require("catppuccin").setup()

--set the colorscheme to it!
vim.cmd.colorscheme("catppuccin")
