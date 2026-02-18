return {
    {
        'nvim-mini/mini.icons',
        version = '*',
        -- Required setup
        opts = {}
    },
    {
        'nvim-mini/mini.statusline',
        version = '*',
        config = function()
            require('mini.statusline').setup({})
        end,
        event = 'VimEnter',
    },
    {
        'nvim-mini/mini.surround',
        version = '*',
        -- Required setup
        opts = {}
    },
    {
        'nvim-mini/mini.tabline',
        version = '*',
        -- Required setup
        config = function()
            require('mini.tabline').setup({
                show_icons = true,
                format = nil,
            })
        end,
    },
}
