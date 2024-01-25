-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Python
require('lspconfig').pyright.setup {
  capabilities = capabilities,
}

-- Lua
require('lspconfig').lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}

-- Nix
require('lspconfig').nil_ls.setup {
  autostart = true,
  capabilities = capabilities,
}

-- Markdown
require("lspconfig").marksman.setup{
  capabilities = capabilities,
}

-- Terraform
require("lspconfig").terraformls.setup{
  capabilities = capabilities,
}

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = function()
    vim.lsp.buf.format()
  end,
})
