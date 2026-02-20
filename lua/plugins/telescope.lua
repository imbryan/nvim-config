return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {
        pickers = {
            find_files = {
                find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*"},
            },
        },
    },
    keys = {
        {
            '<leader>p',
            function() require('telescope.builtin').find_files() end,
            desc = 'Find files',
        },
        {
            '<leader>tsff',
            function() require('telescope.builtin').find_files() end,
            desc = 'Find files',
        },
        {
            '<leader>tsgs',
            function() require('telescope.builtin').grep_string(
                { search = vim.fn.input("Grep > ") }
            ) end,
            desc = 'Telescope grep search',
        },
    },
}
