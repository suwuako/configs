return {
    "nvim-treesitter/nvim-treesitter",
    init = function()

    end,
    opts = {
        ensure_installed = { "c", "lua", "vim", "markdown", "python", "js" },
        highlight = {
            enable = true,
            disable = {},
        },
    },
}
