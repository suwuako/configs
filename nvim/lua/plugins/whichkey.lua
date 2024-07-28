return {
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
}
