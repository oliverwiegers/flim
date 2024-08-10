{pkgs}:
with pkgs; [
  fzf
  ripgrep

  # Lintets
  tflint
  pylint
  yamllint
  shellcheck

  # Language Servers
  nil
  gopls
  pyright
  lua-language-server
  marksman
  terraform-ls
  rust-analyzer-nightly
]
