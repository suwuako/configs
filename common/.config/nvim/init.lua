-- todos 
-- [ ] LSP
-- [x] neorg
-- [x] sync clipboard
-- [x] fugitive
-- [ ] noneckpain
-- [ ] ctags
-- [ ] syntax highlighting
-- [ ] auto braces

-- lazy
require("config/lazy")

-- options
require("config/options/global")
require("config/options/editing")
require("config/options/visual")
require("config/options/autocommands")

-- keymaps
require("config/keymaps/nvim")
require("config/keymaps/window")
require("config/keymaps/misc")

-- startup
require("config/on_startup")
