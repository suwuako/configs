return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>sg', builtin.find_files, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Telescope search word' })
        vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
    end,
}
