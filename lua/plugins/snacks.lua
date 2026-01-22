return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        indent = { enabled = true },
        notify = { enabled = true },
        notifier = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        terminal = {
            win = {
                position = "bottom",
                height = 0.33,
                wo = {
                    -- Declutter
                    winbar = '',
                },
            },
        },
    },
    keys = {
        {
            "<leader>`",
            function() Snacks.terminal.toggle(nil, {}) end,
            mode = { "n", "t" },
            desc = "Toggle terminal"
        },
        -- TODO: figure out why it takes three <Esc> to exit terminal mode
        {
            "<leader>bd",
            function() Snacks.bufdelete() end,
            mode = { "n", },
            desc = "Delete buffer"
        },
    },
}
