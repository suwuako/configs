return {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function()
        -- colourscheme
        vim.cmd.colorscheme "catppuccin"
    end
}
