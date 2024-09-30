return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
        require("neorg").setup({
            load = {
                -- we can load our modules here
                ["core.defaults"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/Documents/notes",
                        },
                        default_workspace = "notes",
                    },
                },
                ["core.concealer"] = {
                    -- and config our modules too!
                    config = {
                        folds = true,
                        icon_preset = "diamond",
                        init_open_folds = "always",
                        icons = {
                            code_block = {
                                width = "fullwidth",
                                conceal = true,
                            },
                        },
                    },
                },
                ["core.pivot"] = {},
                ["core.esupports.indent"] = {
                    config = {
                        indents = {
                            heading1 = { indent = 0 },
                            heading2 = { indent = 2 },
                            heading3 = { indent = 4 },
                            heading4 = { indent = 6 },
                            heading5 = { indent = 8 },
                            heading6 = { indent = 10 },
                        },
                        tweaks = {
                            unordered_list1 = 0,
                            unordered_list2 = 2,
                            unordered_list3 = 4,
                            unordered_list4 = 6,
                            unordered_list5 = 8,
                            unordered_list6 = 10,
                        },
                    },
                },
                ["core.latex.renderer"] = {
                    conceal = true,
                },
            },
        })
        vim.opt.conceallevel = 2
        vim.opt.concealcursor = "nc"
    end,
}

