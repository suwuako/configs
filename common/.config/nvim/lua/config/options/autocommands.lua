vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

local ftypeopts = {
    defaults = {
        tabstop = 4,
        shiftwidth = 4,
        expandtab = true,
    },
    c = {
        tabstop = 4,
        shiftwidth = 4,
        expandtab = true,
    },
    asm = {
        tabstop = 8,
        shiftwidth = 8,
        expandtab = false,
    },
    cpp = {
        tabstop = 2,
        shiftwidth = 2,
    },
    yaml = {
        tabstop = 2,
        shiftwidth = 2,
    },
    javascript = {
        tabstop = 2,
        shiftwidth = 2,
    },
    typescript = {
        tabstop = 2,
        shiftwidth = 2,
    },
}

local function LoadOpts(opts, buf)
    for key, value in pairs(opts) do
        vim.bo[buf][key] = value
    end
end

local function LoadFiletypeOpts(opts)
    local bufferopts = ftypeopts[vim.bo[opts.buf].filetype] or {}
    LoadOpts(vim.tbl_extend('keep', bufferopts, ftypeopts.defaults), opts.buf)
end

local augroup = vim.api.nvim_create_augroup("openBufOpts", {})
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = augroup,
    callback = LoadFiletypeOpts,
})

local vim = vim
local api = vim.api
local M = {}
-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end


local autoCommands = {
    -- other autocommands
    open_folds = {
        {"BufReadPost,FileReadPost", "*", "normal zR"}
    }
}

M.nvim_create_augroups(autoCommands)
