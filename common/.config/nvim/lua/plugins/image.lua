return {
--[[

    {
      "vhyrro/luarocks.nvim",
      priority = 1001,
      opts = {
        rocks = { "magick" },
      },
    },
    {
      "3rd/image.nvim",
      dependencies = { "luarocks.nvim" },
      config = function()
        require("image").setup({
          -- Configuration options here (see full example in the original post)
        })
      end
    },
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- add options here
        -- or leave it empty to use the default settings
      },
      keys = {
        -- suggested keymap
        { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
      },
    }
--]]
}
