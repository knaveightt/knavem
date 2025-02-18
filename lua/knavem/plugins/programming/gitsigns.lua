return {
    "lewis6991/gitsigns.nvim",
    name = "programming-gitsigns",
    lazy = false,
    config = true,
    keys = {
        { "<leader>gB", "<cmd>Gitsigns blame<CR>", desc = "Advanced Blame" }, 
        { "<leader>gS", "<cmd>Gitsigns stage_hunk<CR>", desc = "Hunk Stage"},
        { "<leader>gR", "<cmd>Gitsigns reset_hunk<CR>", desc = "Hunk Reset"},
    },
}
