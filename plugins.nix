{pkgs}:
with pkgs.vimPlugins; [
  # Theme
  gruvbox-nvim

  # Fugitive + plugins
  fugitive
  vim-rhubarb
  fugitive-gitlab-vim

  # Plugins
  plenary-nvim # Needed for git-worktree-nvim && telescope-nvim
  telescope-nvim
  telescope-fzf-native-nvim
  bufferline-nvim
  git-worktree-nvim
  gitsigns-nvim
  indent-blankline-nvim-lua
  lualine-nvim
  nvim-cmp
  nvim-web-devicons
  vim-commentary
  vim-nix
  vim-terraform
  vim-floaterm
  nvim-lint
  nvim-bqf
  rustaceanvim

  # Nvim treesitter.
  nvim-treesitter
  nvim-treesitter-context
  nvim-treesitter.withAllGrammars

  # Completion.
  cmp-buffer
  cmp-cmdline
  cmp-dictionary
  cmp-git
  cmp-nvim-lsp
  cmp-path
  cmp-spell
  cmp-vsnip
  friendly-snippets
  lspkind-nvim
  nvim-cmp
  nvim-lspconfig
  vim-vsnip
]
