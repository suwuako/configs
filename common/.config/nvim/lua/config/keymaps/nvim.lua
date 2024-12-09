-- setup whichkey
local wk = require("which-key")
wk.add({
    { "<leader>e", group = "System", desc = "System keymaps" },
    { "<leader>n", group = "Navigation", desc = "Navigation keymaps" },
    { "<leader>s", group = "Telescope", desc = "Telescope keymaps" },
})

-- source file with <leader>s
vim.keymap.set("n", "<leader>es", "<cmd>source<CR>", { desc = "sources current file" })

-- open :Ex to help navigate fs
vim.keymap.set("n", "<leader>ex", "<cmd>Ex<CR>", { desc = "Opens netrw directory listing" })
