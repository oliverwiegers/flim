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
vim.lsp.config.pyright = {
  capabilities = capabilities,
}

-- Lua
vim.lsp.config.lua_ls = {
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
vim.lsp.config.nil_ls = {
  autostart = true,
  capabilities = capabilities,
}

-- Markdown
vim.lsp.config.marksman = {
  capabilities = capabilities,
}

-- Terraform
vim.lsp.config.terraformls = {
  capabilities = capabilities,
}

vim.lsp.config.tflint = {
  capabilities = capabilities,
}

-- Go
vim.lsp.config.gopls = {
  capabilities = capabilities,
}

-- Jsonnet
vim.lsp.config.jsonnet_ls = {
  capabilities = capabilities,
}
