-- Set up icons.
--vim.diagnostic.config('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
--vim.diagnostic.config('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
--vim.diagnostic.config('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
--vim.diagnostic.config('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN]  = '',
      [vim.diagnostic.severity.INFO]  = '',
      [vim.diagnostic.severity.HINT]  = '',
    },
  },
  virtual_text = {
    source = "always",  -- Or "if_many"
  },
  float = {
    source = "always",  -- Or "if_many"
  },
})

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
