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
