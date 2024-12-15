vim.g.mapleader =' ' 
vim.g.maplocalleader = ' '
vim.cmd([[set shiftwidth=4]])

vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("i","jj","<Esc>")
vim.keymap.set("v","<Tab>",">")
vim.keymap.set("v","<S-Tab>","<")
vim.cmd(":set virtualedit=onemore")
vim.keymap.set("n", "<Tab>", "v>")
vim.keymap.set("n", "<S-Tab>","v<")
