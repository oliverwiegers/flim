{pkgs}:
with pkgs.vimPlugins; [
  # Theme
  gruvbox-nvim

  # Fugitive + plugins
  fugitive
  fugitive-gitlab-vim
  vim-rhubarb

  # Plugins
  bufferline-nvim
  git-worktree-nvim
  gitsigns-nvim
  indent-blankline-nvim-lua
  lualine-nvim
  nvim-bqf
  nvim-cmp
  nvim-lint
  nvim-web-devicons
  plenary-nvim # Needed for git-worktree-nvim && telescope-nvim
  telescope-fzf-native-nvim
  telescope-nvim
  vim-commentary
  vim-floaterm
  vim-tmux-navigator

  # Language specific
  rustaceanvim
  vim-nix
  vim-terraform

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
