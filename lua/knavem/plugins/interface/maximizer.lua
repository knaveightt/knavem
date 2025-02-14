return {
    "szw/vim-maximizer",
    name = "interface-maximizer",
    event = "VeryLazy",
    keys = {
        { "<C-w>W", "<cmd>MaximizerToggle<CR>", desc = "Maximize Split Window" },
        { "<leader>wW", "<cmd>MaximizerToggle<CR>", desc = "Maximize Split Window" },
   },
}
