return {
    "yorickpeterse/nvim-window",
    name = "interface-nvim-window",
    event = "VeryLazy",
    keys = {
        { "<M-w>", "<cmd>lua require('nvim-window').pick()<CR>", desc="Window Picker" },
    },
    config = true,
}
