return {
    "lukas-reineke/indent-blankline.nvim",
    name = "programming-indentguide",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    opts = {
        indent = { char = "" },
    },
}
