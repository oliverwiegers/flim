require('lint').linters_by_ft = {
  bash = {'shellcheck'},
  sh = {'shellcheck'},
  yaml = {'yamllint'},
  python = {'pylint'},
}

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  callback = function()
    require("lint").try_lint()
  end,
})

vim.api.nvim_create_autocmd({"BufReadPost"}, {
  callback = function()
    require("lint").try_lint()
  end,
})
