return {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
        "nvimtools/none-ls.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.diagnostics.commitlint
            }
        })
    end,
}
