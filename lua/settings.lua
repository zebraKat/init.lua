vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.showmode = false
vim.opt.breakindent = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.o.virtualedit = "onemore"

vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.opt.tabstop = 4
vim.cmd("set expandtab sw=4 sts=4")

vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)

