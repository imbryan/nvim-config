return {
    'numToStr/Comment.nvim',
    opts = {},
    keys = {
        -- Comment line (Normal Mode)
        {
            "<leader>/",
            function()
                require("Comment.api").toggle.linewise.current()
            end,
            desc = "Toggle linewise comment"
        },
        -- Comment selection (Visual Mode)
        {
            "<leader>/",
            function()
                local esc = vim.api.nvim_replace_termcodes(
                    '<ESC>', true, false, true
                )
                vim.api.nvim_feedkeys(esc, 'nx', false)
                require("Comment.api").toggle.linewise(vim.fn.visualmode())
            end,
            mode = "x",
            desc = "Toggle visual linewise comment"
        },
    },
}
