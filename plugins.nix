{pkgs}:
with pkgs.vimPlugins; [
  # Theme
  gruvbox

  # Plugins
  ale
  vim-nix
  fzf-vim
  nvim-cmp
  lualine-nvim
  plenary-nvim # Needed for git-worktree-nvim
  vim-commentary
  bufferline-nvim
  nvim-web-devicons
  git-worktree-nvim
  indent-blankline-nvim-lua

  # Nvim treesitter.
  nvim-treesitter
  nvim-treesitter-context
  nvim-treesitter.withAllGrammars

  # Completion.
  nvim-cmp
  cmp-git
  cmp-spell
  cmp-vsnip
  cmp-path
  cmp-buffer
  cmp-cmdline
  cmp-nvim-lsp
  cmp-dictionary
  lspkind-nvim
  nvim-lspconfig
  friendly-snippets
  vim-vsnip
]
