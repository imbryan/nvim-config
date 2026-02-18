-- Netrw
-- NOTE: currently replaced by oil.nvim
-- for _, lhs in ipairs({"<leader>e<CR>", "<leader>e"}) do
--     vim.keymap.set("n", lhs, vim.cmd.Ex, { desc = "Netrw" })
-- end
-- vim.keymap.set("n", "<leader>e!", ":bd! | Ex<CR>", { desc = "Force delete buffer and open Netrw" })
-- vim.keymap.set("n", "<leader>ej", ":Hex!<CR>", { desc = "Bottom split Netrw" })

-- Writing and quitting
for _, lhs in ipairs({"<leader>q<CR>", "<leader>q"}) do
    vim.keymap.set("n", lhs, "<cmd>q<CR>")
end
vim.keymap.set("n", "<leader>q!", ":q!<CR>")
vim.keymap.set("n", "<leader>qa", ":qa<CR>")
vim.keymap.set("n", "<leader>qw", "<cmd>wq<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Relative line numbers
vim.keymap.set("n", "<leader>r!", ":set relativenumber!<CR>", { desc = "Toggle Relative Line Numbers" })

-- Buffer navigation
vim.keymap.set("n", "<tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<CR>", { desc = "Previous buffer" })

-- Splits
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split horizontal" })

-- Terminal
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode", nowait = true, silent = true })
