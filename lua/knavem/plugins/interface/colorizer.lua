return {
    "norcalli/nvim-colorizer.lua",
    name = "interface-colorizer",
    event = "VeryLazy",
    keys = {
        { "<leader>bc", "<cmd>ColorizerToggle<CR>", desc="Colorize Current Buffer" }
    },
    config = function()
        local colorize = require("colorizer") 
        colorize.setup({})
    end,
}
