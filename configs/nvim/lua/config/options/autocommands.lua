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
