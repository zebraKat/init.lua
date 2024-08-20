vim.cmd([[set noundofile]])

-- Make line numbers default
vim.opt.number = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("i","jj","<Esc>")
vim.cmd([[set shiftwidth=4]])
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)



-- Setup lazy.nvim
require("lazy").setup({
  spec = { -- plugins
   	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"williamboman/mason.nvim"},
 	{'nvim-telescope/telescope.nvim', tag = '0.1.8',dependencies = { 'nvim-lua/plenary.nvim' },},
	 -- import/override with your plugins
    	{ import = "plugins" },
	
},
   -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "gruvbox" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require("mason").setup() -- setup mason

--telescope shortcuts
local builtin = require("telescope.builtin")
vim.keymap.set('n',"<leader>ff",builtin.find_files,{})
vim.keymap.set('n',"<C-p>",builtin.git_files,{})
