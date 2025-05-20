vim.g.mapleader = ' '
vim.o.mouse = "a"
vim.o.number = true
vim.o.showmode = false
vim.o.tabstop = 4
vim.o.breakindent = true
vim.o.cursorline = true
vim.o.relativenumber = true
vim.o.virtualedit = "onemore"

vim.cmd("set expandtab sw=4 sts=4")

vim.schedule(function()
	vim.o.clipboard = 'unnamedplus'
end)

