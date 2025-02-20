return {
    "L3MON4D3/LuaSnip",
    name = "programming-luasnip",
    lazy = false,
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
        local ls = require("luasnip")

        -- setup sensible keymaps
        vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-E>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, {silent = true})
        vim.keymap.set("n", "<leader>pS", "<cmd>lua require('luasnip.loaders').edit_snippet_files()<CR>", {desc="Edit Snippets..."})

        -- load snipmate style snippets
        require("luasnip.loaders.from_snipmate").lazy_load()
    end,
}
