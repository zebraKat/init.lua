vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.cmd([[set shiftwidth=4]])
vim.api.nvim_create_user_command(
  'Ex',                  -- Command name
  function()                    -- Command action
	vim.cmd("Oil")
  end,
  { nargs = 0 }                 -- Options (like nargs for number of arguments)
)
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("i","jj","<Esc>")
vim.keymap.set("v","<Tab>",">")
vim.keymap.set("v","<S-Tab>","<")
vim.cmd(":set virtualedit=onemore")
