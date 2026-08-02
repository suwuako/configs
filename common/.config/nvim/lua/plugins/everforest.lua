return {
 "neanias/everforest-nvim",
  name = "everforest",
  version = false,
  lazy = false,
  config = function()
    require("everforest").setup({
      -- Your config here
    })
  end,
}
