-- Required Dependencies
-- a) git in path
-- b) patched nerd font (e.g. JetBrainsMono)
-- c) ripgrep in path
-- d) gcc/g++ in path (for treesitter compile and jsregex(luasnip) make)

-- load core knavem configuration options
require("knavem.core")

-- load plugins via lazy.nvim
require("knavem.lazy")
