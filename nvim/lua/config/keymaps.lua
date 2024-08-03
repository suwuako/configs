-- neotree

-- exit insert mode on "jj"
vim.keymap.set("i", "jj", "<Esc>")

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- notify 
vim.keymap.set("n", "<leader>nd", vim.notify.dismiss, { desc = "[N]otification [D]ismiss" })
vim.keymap.set("n", "<leader>ns", "<cmd>Telescope notify<CR>", { desc = '[S]earch [N]otifications' })

-- mason
vim.keymap.set("n", "<leader>mm", "<cmd>Mason<CR>", { desc = "Starts [M]ason gui" })

-- telescope
vim.keymap.set("n", "<leader>sv", vim.cmd.Ex, {desc = "Opens directory listing"})
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = true,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

-- persistence
vim.keymap.set("n", "<leader>ps", function() require("persistence").load() end, { desc = "Load the session for current directory" })
vim.keymap.set("n", "<leader>pS", function() require("persistence").select() end, { desc = "Select a session to load" })
vim.keymap.set("n", "<leader>pl", function() require("persistence").load({ last = true }) end, { desc = "Load the last session" })
vim.keymap.set("n", "<leader>pd", function() require("persistence").stop() end, { desc = "Stop persistence - session won't be saved on exit" })

-- lazy 
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open [L]azy" })
