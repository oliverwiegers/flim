vim.g.ale_echo_msg_format = '[%linter%] [%severity%] %code% %s'
vim.g.ale_sign_error = '✗'
vim.g.ale_sign_warning = '⚠'

-- Plugin related bindings.
vim.keymap.set("n", "<Leader>an", ":ALENext<CR>", {silent=true})
vim.keymap.set("n", "<Leader>ap", ":ALEPrevious<CR>", {silent=true})
