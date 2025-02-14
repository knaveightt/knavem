return {
    "nvim-neo-tree/neo-tree.nvim",
    name = "interface-neo-tree",
    lazy = false,
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>tf", "<cmd>Neotree<CR>", desc="Open File Tree" },
    },
}
