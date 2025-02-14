return {
    "folke/which-key.nvim",
    name = "interface-which-key",
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        -- additional config goes here
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Show Local Buffer Keymaps"
        },
    },
}
