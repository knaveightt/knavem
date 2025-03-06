return {
    "bluz71/vim-moonfly-colors",
    name = "interface-colorscheme",
    lazy = false,
    priority = 1000, -- load before all others
    config = function()
        -- activating colorscheme here
        vim.cmd([[colorscheme moonfly]])
    end,
}
