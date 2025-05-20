local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader>ff", builtin.find_files,{desc="fzf files"})
vim.keymap.set("n", "<Leader>fg", builtin.live_grep,{desc="Live grep"})
vim.keymap.set("n", "<Leader>fb", builtin.buffers,{desc="Telescope Buffers"})
