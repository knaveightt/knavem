return {
    "Shatur/neovim-ayu",
    name = "interface-colorscheme",
    lazy = false,
    priority = 1000, -- load before all others
    config = function()
        local ayu = require("ayu")

        ayu.setup({
        })

        -- activating colorscheme here
        vim.cmd([[colorscheme ayu-mirage]])
    end,
}
