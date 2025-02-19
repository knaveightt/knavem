return {
    "tpope/vim-fugitive",
    name = "programming-vim-fugitive",
    lazy = false,
    keys = {
        { "<leader>gs", "<cmd>Git<CR>", desc = "Show Git Status" }, 
        { "<leader>gd", "<cmd>Gvdiff<CR>", desc = "Current File Diff" },
        { "<leader>gb", "<cmd>Git blame<CR>", desc = "Current File Blame"},
        { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit"},
        { "<leader>gP", "<cmd>Git push<CR>", desc = "Push Commits"},
        { "<leader>gp", "<cmd>Git pull<CR>", desc = "Push Commits"},
        { "<leader>gf", "<cmd>Git fetch<CR>", desc = "Push Commits"},
    },
}
