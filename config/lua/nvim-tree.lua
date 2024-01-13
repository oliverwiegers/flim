require('nvim-tree').setup()

vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<CR>", {silent=true})
