return {
    "hrsh7th/nvim-cmp",
    name = "programming-completions",
    event = "InsertEnter",
    dependencies = {
        "programming-luasnip", -- should already be loaded
        "saadparwaiz1/cmp_luasnip", -- completion source for luasnip
        "hrsh7th/cmp-path",   -- completion source for file sys paths
        "onsails/lspkind.nvim", -- kind mini-icons for completion menus
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        cmp.setup({
            formatting = {
                format = lspkind.cmp_format({
                    mode = 'symbol', -- show only icons
                    maxwidth = {
                        menu = 50, -- leading text (labelDetails)
                        abbr = 50, -- actual suggestion item 
                    },
                    ellipsis_char = "...",
                    show_labelDetails = true,

                    -- The function below will be called before any actual modifications from lspkind
                    -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                    before = function (entry, vim_item)
                        -- ...
                        return vim_item
                    end
                })
            },
            competion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = { -- configure nvim-cmp interaction with snippet engine
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
            -- sources for autocompletion
            sources = cmp.config.sources({
                { name = "luasnip" }, -- snippets
                { name = "path" }, -- file system paths
            }),
        })
    end,
}
