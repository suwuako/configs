-- exit insert with "jj", "jk"
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- highlight on search, but clear after pressing <Esc>
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- change colour scheme
local colourscheme_flag = false
function toggle_colourscheme()
    if colourscheme_flag == true then
        vim.cmd.colorscheme "catppuccin-mocha"
        colourscheme_flag = false
    else
        vim.cmd.colorscheme "catppuccin-latte"
        colourscheme_flag = true
    end
end
vim.keymap.set("n", "<leader>ec", toggle_colourscheme, { desc = "toggle between light/dark mode" })

-- quitall
vim.keymap.set("n", "<C-q>", "<cmd>wqa<CR>", { desc = "Write + Quit all" })
