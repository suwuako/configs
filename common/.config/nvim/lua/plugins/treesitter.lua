return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "markdown", "python", "javascript" },
            auto_install = true,
            highlight = {
                enable = true,
                disable = {}
            },
        vim.filetype.add {
              extension = { rasi = 'rasi' },
              pattern = {
                ['.*/waybar/config'] = 'jsonc',
                ['.*/mako/config'] = 'dosini',
                ['.*/kitty/*.conf'] = 'bash',
                ['.*/hypr/.*%.conf'] = 'hyprlang',
              },
            }
        })

    end,
}
