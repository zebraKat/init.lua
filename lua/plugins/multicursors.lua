return {
  'mg979/vim-visual-multi',
  branch = 'master',
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ["Find Under"]         = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
      ["Add Cursor Down"]    = "<A-j>",
      ["Add Cursor Up"]      = "<A-k>",
      ["Skip Region"]        = "<C-k>",
      ["Remove Region"]      = "<C-BS>",
      ["Select All"]         = "<A-CR>",  -- Alt+Enter
      ["Visual Cursors"]     = "<A-CR>",  -- Alt+Enter in visual mode
    }
  end
}

