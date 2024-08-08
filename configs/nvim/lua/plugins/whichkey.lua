return {
    {
        "echasnovski/mini.icons",
        config = function()
            require("mini.icons").setup({
                style = "glyph",

                -- Customize per category. See `:h MiniIcons.config` for details.
                default   = {},
                directory = {},
                extension = {},
                file      = {},
                filetype  = {},
                lsp       = {},
                os        = {},
            })
        end
    },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
              spec = {
                  { "<BS>", desc = "Decrement Selection", mode = "x" },
                  { "<c-space>", desc = "Increment Selection", mode = { "x", "n" } },
              },
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
        config = function()
            local wk = require("which-key")
            wk.add({
                { "<leader>s", group = "[S]earch"},
                { "<leader>n", group = "[N]otifications" },
                { "<leader>l", group = "[L]azy", icon = "" },
                { "<leader>w", group = "[W]ikivim", icon = "" },
                { "<leader>m", group = "[M]ason", icon = "" },
                { "<leader>x", group = "trouble", icon = "" },
                { "<leader>p", group = "[P]ersistence", icon = "" },
            })
        end
    }
}
