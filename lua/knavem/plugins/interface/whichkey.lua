return {
    "folke/which-key.nvim",
    name = "interface-which-key",
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        local wk = require("which-key")
        wk.add({
            {"<leader>b", desc = "Buffer Commands"},
            {"<leader>f", desc = "Search Commands"},
            {"<leader>g", desc = "Git Commands"},
            {"<leader>p", desc = "Project Commands"},
            {"<leader>t", desc = "Tree Commands"},
            {"<leader>,", desc = "Misc Commands"},
        })
    end,
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
