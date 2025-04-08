{pkgs}:
with pkgs.vimPlugins; [
  # Theme
  # gruvbox-nvim
  kanagawa-nvim

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
  todo-comments-nvim
  trouble-nvim
  vim-commentary
  vim-floaterm
  vim-tmux-navigator

  # Language specific
  go-nvim
  rustaceanvim
  vim-nix
  vim-terraform

  # Nvim treesitter.
  nvim-treesitter
  nvim-treesitter-context
  nvim-treesitter-parsers.go
  nvim-treesitter-parsers.lua
  nvim-treesitter-parsers.nix
  nvim-treesitter-parsers.python
  nvim-treesitter-parsers.rust
  nvim-treesitter-parsers.terraform
  nvim-treesitter-parsers.toml
  nvim-treesitter-parsers.yaml

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
