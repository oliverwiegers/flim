-- Set up icons.
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

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

require("lspconfig").tflint.setup{
  capabilities = capabilities,
}

-- Go
require("lspconfig").gopls.setup{
  capabilities = capabilities,
}
