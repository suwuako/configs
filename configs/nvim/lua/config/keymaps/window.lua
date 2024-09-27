-- opening windows
vim.keymap.set("n", "<C-v>", "<C-w>v")
vim.keymap.set("n", "<C-b>", "<C-w>s")
vim.keymap.set("n", "<C-d>l", "<cmd>vertical resize +5<CR>", { desc = "Expand window size horizontally by 5 spaces" })
vim.keymap.set("n", "<C-d>j", "<cmd>resize +5<CR>", { desc = "Expand window size vertically by 5 spaces" })
vim.keymap.set("n", "<C-d>k", "<cmd>resize -5<CR>", { desc = "Shrink window size vertically by 5 spaces" })
vim.keymap.set("n", "<C-d>h", "<cmd>vertical resize -5<CR>", { desc = "Shrink window size horizontally by 5 spaces" })

-- moving between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to right window" })

-- tab stuff
vim.keymap.set("n", "<A-t>", "<cmd>tabnew<CR>", { desc = "Open new tabpage" })
vim.keymap.set("n", "<A-c>", "<cmd>tabclose<CR>", { desc = "Close tabpage" })
vim.keymap.set("n", "<A-l>", "gt", { desc = "Next tabpage" })
vim.keymap.set("n", "<A-h>", "gT", { desc = "Prev tabpage" })

-- neotree
vim.keymap.set("n", "<leader>nf", "<cmd>Neotree toggle right filesystem<CR>", { desc = "Open neotree filesystem" })
vim.keymap.set("n", "<leader>nb", "<cmd>Neotree toggle right buffers<CR>", { desc = "Open neotree buffer" })
vim.keymap.set("n", "<leader>ng", "<cmd>Neotree toggle right git_status<CR>", { desc = "Open neotree git_status" })

-- terminal
vim.keymap.set("n", "<leader>tt", "<cmd>:terminal<CR>", { desc = "Open terminal" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Exit terminal mode" })
