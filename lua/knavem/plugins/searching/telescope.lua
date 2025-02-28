return {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    name = "searching-telescope",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        -- configure telescope
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        
        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                    }
                }
            }
        })

        -- keymaps
        local keymap = vim.keymap
        local builtin = require("telescope.builtin")
        
        keymap.set("n", "<leader>ff", builtin.find_files, { desc="Search for Files" })
        keymap.set("n", "<leader>fb", builtin.buffers, { desc="Search Buffers" })
        keymap.set("n", "<leader>fr", builtin.live_grep, { desc="Search using Ripgrep" })
        keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc="Search in Buffer" })
        keymap.set("n", "<leader>fgs", builtin.git_status, { desc = "Git Status Search"})
        keymap.set("n", "<leader>fgc", builtin.git_commits, { desc = "Git Commit Search" })
    end,
}
