vim.keymap.set("n", "<leader>e.", vim.cmd.Ex, { desc = "Netrw" })
vim.keymap.set("n", "<leader>e!", ":bd! | Ex<CR>", { desc = "Force delete buffer and open Netrw" })
vim.keymap.set("n", "<leader>eb", ":Hex!<CR>", { desc = "Bottom split Netrw" })
vim.keymap.set("n", "<leader>q.", ":q<CR>")
vim.keymap.set("n", "<leader>q!", ":q!<CR>")
vim.keymap.set("n", "<leader>qa", ":qa<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>r!", ":set relativenumber!<CR>", { desc = "Toggle Relative Line Numbers" })

-- Open terminal on the bottom with a 33% height
vim.keymap.set("n", "<leader>t", function()
    local lines = math.floor(vim.o.lines * 0.33)
    vim.cmd("botright "..lines.."split | te")
    vim.opt_local.winfixheight = true
end, { desc = "Bottom split Terminal" })

-- Comment line (Normal Mode)
vim.keymap.set("n", "<leader>/", function()
    require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle linewise comment" })

-- Comment selection (Visual Mode)
vim.keymap.set("x", "<leader>/", function()
    local esc = vim.api.nvim_replace_termcodes(
        '<ESC>', true, false, true
    )
    vim.api.nvim_feedkeys(esc, 'nx', false)
    require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, { desc = "Toggle visual linewise comment" })

-- Make space behave normal in Terminal Mode
local term_fix_group = vim.api.nvim_create_augroup("TerminalFix", { clear = true })

vim.api.nvim_create_autocmd("TermOpen", {
    group = term_fix_group,
    pattern = "*",
    callback = function()
        vim.keymap.set("t", "<space>", "<space>", { buffer = true, nowait = true })
    end,
})
