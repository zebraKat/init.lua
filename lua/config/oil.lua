require("oil").setup {
    view_options = {show_hidden = true},
    columns = {"icon"},
    keymaps = {
        ["<C-h>"] = false,
        ["<M-h>"] = "actions.select_split",
    }
}
vim.api.nvim_create_user_command("Ex",function() vim.cmd("Oil") end,{})

