return {
    "tpope/vim-fugitive",
    name = "programming-vim-fugitive",
    lazy = false,
    keys = {
        { "<leader>gg", "<cmd>Git<CR>", desc = "Show Git Status" }, 
        { "<leader>gd", "<cmd>Gvdiff<CR>", desc = "Current File Diff" },
        { "<leader>gb", "<cmd>Git blame<CR>", desc = "Current File Blame"},
        { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit"},
    },
}
