return {
    "NickvanDyke/opencode.nvim",
    dependencies = {
        -- Recommended for `ask()` and `select()`.
        -- Required for `snacks` provider.
        ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
        { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
    },
    config = function()
        ---@type opencode.Opts
        vim.g.opencode_opts = {
            -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition".
        }

        -- Required for `opts.events.reload`.
        vim.o.autoread = true
    end,
    keys = {
        {
            "<leader>oc<CR>",
            function() require("opencode").toggle() end,
            mode = { "n", "t" },
        },
        {
            "<leader>oca",
            function() require("opencode").ask("@this: ", { submit = true }) end,
            mode = { "n", "x" },
            desc = "Ask opencode",
        },
        {
            "<leader>oc<C-p>",
            function() require("opencode").select() end,
            mode = { "n", "x" },
        },
        {
            "<leader>ocp",
            function() require("opencode").prompt("@this") end,
            mode = { "n", "x" },
        },
        {
            "<leader>ock",
            function() require("opencode").command("session.half.page.up") end,
            desc = "Half-page up opencode",
        },
        {
            "<leader>ocj",
            function() require("opencode").command("session.half.page.down") end,
            desc = "Half-page down opencode",
        },
        {
            "<leader>oc<tab>",
            function() require("opencode").command("agent.cycle") end,
            desc = "Cycle agent opencode",
        },
        {
            "<leader>oc<esc>",
            function() require("opencode").command("prompt.clear") end,
            desc = "Clear prompt opencode",
        },
    },
}
