--Preference
require("ui")
require("remap")
--LAZY
require('Lazy')

----MASON
require('mason').setup()
require("mason-lspconfig").setup({
ensure_installed = { "lua_ls", "luau_lsp" },
})
--------LUA_LS
require "lspconfig".lua_ls.setup {
      runtime = {
        version = 'Lua5.1'
      },
      Lua = {
	  diagnostics = {
	    globals = { "vim" }
	  },
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
        }
      },
      telemetry = {
	enable = false
      }
}
----TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n',"<leader>ff",builtin.find_files,{})
vim.keymap.set('n',"<C-p>",builtin.git_files,{})
----LuaLine
require('lualine').setup(require("luali"))
----CMP
require('cmpsetup')
----luau
require'lspconfig'.luau_lsp.setup{
    platform = {
	type = "roblox",
      },
    types = {
	roblox_security_level = "PluginSecurity",
      },
    plugin = {
	    enabled = true,
	    port = 3667,
      },
}
----oil
require("oil").setup({
    default_file_explorer = true,
    view_options={
	is_hidden_file = function(name, bufnr)
	  return name ~= ".." and vim.startswith(name, ".")
	end,
    }
})
