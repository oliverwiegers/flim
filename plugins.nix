{pkgs}:
with pkgs.vimPlugins; [
  # Theme
  gruvbox

  # Plugins
  ale
  bufferline-nvim
  fugitive
  fzf-vim
  git-worktree-nvim
  gitsigns-nvim
  indent-blankline-nvim-lua
  lualine-nvim
  nvim-cmp
  nvim-tree-lua
  nvim-web-devicons
  plenary-nvim # Needed for git-worktree-nvim
  vim-commentary
  vim-nix

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
