return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    commands = {
        open_nofocus = function(state)
            require("neo-tree.sources.filesystem.commands").open(state)
            vim.schedule(function()
            vim.cmd([[Neotree close]])
        end)
    end,
    },
    config = function()
        vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle position=right reveal=true<CR>", { desc = "Opens neotree" })
    end
}
