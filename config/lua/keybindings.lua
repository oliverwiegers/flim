-- Set leader key to space.
vim.g.mapleader = " "

-- GoTo file under cursor.
vim.keymap.set("n", "gf", "<C-W>gf", {silent=true})

-- Save file as root.
vim.keymap.set('c', 'w!!', ':w ! sudo tee % > /dev/null')

-- Split navigation.
vim.keymap.set("n", "<Leader>-", ":split<CR>", {silent=true})
vim.keymap.set("n", "<Leader>v", ":vsplit<CR>", {silent=true})

-- Tab navigation.
vim.keymap.set("n", "<Leader>k", ":tabnext<CR>", {silent=true})
vim.keymap.set("n", "<Leader>j", ":tabprevious<CR>", {silent=true})

-- Mapping redo command to U.
vim.keymap.set("n", "<S-u>", ":redo<CR>", {silent=true})

-- Reset search pattern.
vim.keymap.set("n", "<C-l>", ":nohlsearch<CR><C-l>", {silent=true})

-- nivm-telescope
vim.keymap.set("n", "<Tab><Tab>", ":Telescope live_grep<CR>", {silent=true})
vim.keymap.set("n", "<Leader>ff", ":Telescope grep_string<CR>", {silent=true})
vim.keymap.set("n", "<Leader>b", ":Telescope buffers<CR>", {silent=true})
vim.keymap.set("n", "<Leader><Space>", ":Telescope find_files<CR>", {silent=true})
vim.keymap.set("n", "<Leader>gc", ":Telescope git_commits<CR>", {silent=true})

-- vim-flaoterm
vim.keymap.set("n", "<Leader><Enter>", ":FloatermToggle<CR>", {silent=true})

-- nvim-lspconfig.
vim.keymap.set("n", "<Leader>dp", vim.diagnostic.goto_prev, {silent=true})
vim.keymap.set("n", "<Leader>dn", vim.diagnostic.goto_next, {silent=true})

-- nvim-bufferline.
vim.keymap.set("n", "<Leader>p", ":BufferLinePick<CR>", {silent=true})
vim.keymap.set("n", "<Leader>1", ":BufferLineGoToBuffer 1<CR>", {silent=true})
vim.keymap.set("n", "<Leader>2", ":BufferLineGoToBuffer 2<CR>", {silent=true})
vim.keymap.set("n", "<Leader>3", ":BufferLineGoToBuffer 3<CR>", {silent=true})
vim.keymap.set("n", "<Leader>4", ":BufferLineGoToBuffer 4<CR>", {silent=true})
vim.keymap.set("n", "<Leader>5", ":BufferLineGoToBuffer 5<CR>", {silent=true})
vim.keymap.set("n", "<Leader>6", ":BufferLineGoToBuffer 6<CR>", {silent=true})
vim.keymap.set("n", "<Leader>7", ":BufferLineGoToBuffer 7<CR>", {silent=true})
vim.keymap.set("n", "<Leader>8", ":BufferLineGoToBuffer 8<CR>", {silent=true})
vim.keymap.set("n", "<Leader>9", ":BufferLineGoToBuffer 9<CR>", {silent=true})

-- Toggle quickfix window.
vim.keymap.set("n", "<Leader>q", ":ToggleQuickfix<CR>", {silent=true})

-- vim-tmux-navigator
vim.g.tmux_navigator_no_mappings = 1
vim.keymap.set("n", "<C-w>h", ":<C-U>TmuxNavigateLeft<cr>", {silent=true})
vim.keymap.set("n", "<C-w>j", ":<C-U>TmuxNavigateDown<cr>", {silent=true})
vim.keymap.set("n", "<C-w>k", ":<C-U>TmuxNavigateUp<cr>", {silent=true})
vim.keymap.set("n", "<C-w>l", ":<C-U>TmuxNavigateRight<cr>", {silent=true})
