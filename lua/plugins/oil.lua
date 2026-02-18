return {
    {
        'stevearc/oil.nvim',
        --@module 'oil'
        --@type oil.SetupOpts
        opts = function()
            local detail = false
            return {
                -- replaces netrw
                default_file_explorer = true,

                columns = {
                    "icon",
                    -- "permissions",
                    -- "size",
                    -- "mtime",
                },

                view_options = {
                    show_hidden = true,
                },

                -- Toggle file detail
                keymaps = {
                    ["gd"] = {
                        desc = "Toggle file detail view",
                        callback = function()
                            detail = not detail
                            if detail then
                                require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
                            else
                                require("oil").set_columns({ "icon" })
                            end
                        end,
                    },
                },

                win_options = {
                    -- for git status
                    signcolumn = "yes:2",
                },
            }
        end,
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        lazy = false,
        keys = {
            {
                "-",
                "<cmd>Oil<CR>",
                mode = { "n" },
                desc = "Open parent directory",
            }
        }
    },
    {
        'refractalize/oil-git-status.nvim',
        dependencies = { 'stevearc/oil.nvim' },
        config = true,
    },
}
