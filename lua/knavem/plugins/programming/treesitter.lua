return {
    "nvim-treesitter/nvim-treesitter",
    name = "programming-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function ()
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({
            highlight = { -- enable syntax highlighting
                enable = true,
            },
            -- enable indentation
            indent = { enable = true },
            -- ensure the following languages are installed by default
            ensure_installed = {
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "vim",
                "vimdoc",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
