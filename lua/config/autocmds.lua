-- Make space behave normal in Terminal Mode
local term_fix_group = vim.api.nvim_create_augroup("TerminalFix", { clear = true })

vim.api.nvim_create_autocmd("TermOpen", {
    group = term_fix_group,
    pattern = "*",
    callback = function()
        vim.keymap.set("t", "<space>", "<space>", { buffer = true, nowait = true })
    end,
})
