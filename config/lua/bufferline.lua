vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    mode = 'tabs',
    separator_style = 'slope',
    diagnostics = "nvim_lsp",
    sort_by = 'tabs',

    hover = {
      enabled = false
    },

    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end,
    name_formatter = function(buf)
      return buf.tabnr .." " .. buf.name
    end,
  }
}

-- Plugin related bindings.
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
