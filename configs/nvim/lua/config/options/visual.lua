-- linenumbers
vim.opt.relativenumber = true
vim.opt.number = true

-- colorscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- 80 char line
vim.opt.colorcolumn = "90"

-- coloured line numbers
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#7287fd" })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#d20f39' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#40a02b' })
