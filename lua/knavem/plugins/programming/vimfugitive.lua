return {
    "tpope/vim-fugitive",
    name = "programming-vim-fugitive",
    lazy = false,
    keys = {
        { "<leader>gs", "<cmd>Git<CR>", desc = "Show Git Status" }, 
        { "<leader>gd", "<cmd>Gvdiff<CR>", desc = "Current File Diff" },
        { "<leader>gb", "<cmd>Git blame<CR>", desc = "Current File Blame"},
        { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit"},
        { "<leader>gp", "<cmd>Git push<CR>", desc = "Push Commits"},
    },
}
