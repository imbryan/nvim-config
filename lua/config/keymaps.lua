vim.keymap.set("n", "<leader>e<CR>", vim.cmd.Ex, { desc = "Netrw" })
vim.keymap.set("n", "<leader>e!", ":bd! | Ex<CR>", { desc = "Force delete buffer and open Netrw" })
vim.keymap.set("n", "<leader>ej", ":Hex!<CR>", { desc = "Bottom split Netrw" })
vim.keymap.set("n", "<leader>q<CR>", ":q<CR>")
vim.keymap.set("n", "<leader>q!", ":q!<CR>")
vim.keymap.set("n", "<leader>qa", ":qa<CR>")
vim.keymap.set("n", "<leader>qw", "<cmd>wq<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>r!", ":set relativenumber!<CR>", { desc = "Toggle Relative Line Numbers" })
vim.keymap.set("n", "<tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<CR>", { desc = "Previous buffer" })

vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode", nowait = true, silent = true })

-- Make space behave normal in Terminal Mode
local term_fix_group = vim.api.nvim_create_augroup("TerminalFix", { clear = true })

vim.api.nvim_create_autocmd("TermOpen", {
    group = term_fix_group,
    pattern = "*",
    callback = function()
        vim.keymap.set("t", "<space>", "<space>", { buffer = true, nowait = true })
    end,
})
