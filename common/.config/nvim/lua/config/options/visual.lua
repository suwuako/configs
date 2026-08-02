-- linenumbers vim.opt.relativenumber = true
vim.opt.relativenumber = true

-- colorscheme
vim.cmd.colorscheme "catppuccin"

-- 80 char line
vim.opt.colorcolumn = "90"

-- coloured line numbers
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#7287fd" })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#d20f39' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#40a02b' })

vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#61afef", bg = "NONE" })
vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "LSP Hover" })
