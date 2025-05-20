vim.keymap.set({"n","v"},    "<Tab>","v>gv",{})
vim.keymap.set({"n","v"},    "<S-Tab>","v<gv",{})
vim.keymap.set("i", "jj", "<ESC>", {})
vim.keymap.set({"i","n"}, "<C-,>", "<CMD>t.<CR>")
vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>")


-- easily refresh my source using " rr"
vim.keymap.set("n", "<Leader>rr",function() vim.cmd("source ~/.config/nvim/init.lua") end)
-- easily run code using " x" 
vim.keymap.set("n", "<Leader>x",function()
    local function find_dub_dir()
    local dir = vim.fn.expand("%:p:h")
    while dir ~= "/" do
      if vim.fn.filereadable(dir .. "/dub.json") == 1 or
         vim.fn.filereadable(dir .. "/dub.sdl") == 1 then
        return dir
      end
      dir = vim.fn.fnamemodify(dir, ":h")
    end
    return nil
  end
    local file = vim.fn.expand("%:p") local ft = vim.bo.filetype local cmd
    if ft == "python" then
        cmd = "python "..file
    elseif ft == "lua" then
        cmd = "lua "..file
    elseif ft == "d" then
        local dir = find_dub_dir()
        if dir then
            cmd = "cd " .. vim.fn.shellescape(dir) .. " && dub run"
        else
            cmd = "rdmd ".. file
        end
    else
        print("unknown file type. "..ft) return
    end

    vim.cmd("split | terminal ".. cmd)
end, {noremap = true, silent = true})


