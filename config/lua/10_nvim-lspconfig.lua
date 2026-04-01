-- Set up icons.
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

-- Set capabilities for every languge server
vim.lsp.config('*', {
  capabilities = capabilities,
  root_markers = {'.git'},
})

-- Python
vim.lsp.enable('pyright')

-- Lua
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
})
vim.lsp.enable('lua_ls')

-- Nix
vim.lsp.config('nil_ls', {
  autostart = true,
})
vim.lsp.enable('nil_ls')

-- Markdown
vim.lsp.enable('marksman')

-- Terraform/OpenTofu
vim.lsp.enable('terraformls')
vim.lsp.enable('tflint')

vim.lsp.config('tofu_ls', {
  cmd = { 'tofu-ls', 'serve' },
  -- Base filetypes
  filetypes = { 'terraform', 'terraform-vars' },
  root_markers = {'.terraform'},
  init_options = {
    ignoreSingleFileWarning = true,
  },
  settings = {
    experimentalFeatures = {
      prefillRequiredFields = true,
    },
  },
})
vim.lsp.enable('tofu_ls')

-- Go
vim.lsp.enable('gopls')

-- Jsonnet
vim.lsp.enable('jsonnet_ls')
