require("settings")
-- CONFIG
require("config.lazy")
---mason
require("mason").setup()
---cmp
require("config.cmp")
---oil
require("oil").setup()
--THEME
vim.opt.termguicolors = true
vim.cmd 'colorscheme monochrome'
