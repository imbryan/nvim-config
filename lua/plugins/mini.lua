return {
    {
        'nvim-mini/mini.icons',
        version = '*',
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
    -- Would use tabline but it breaks my line numbers
    --[[ {
        'nvim-mini/mini.tabline',
        version = '*',
    }, ]]
}
