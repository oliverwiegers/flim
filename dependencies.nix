{pkgs}:
with pkgs; [
  fzf
  ripgrep

  # Lintets
  pylint
  shellcheck
  tflint
  yamllint

  # Language Servers
  gopls
  lua-language-server
  marksman
  nil
  pyright
  rust-analyzer-nightly
  terraform-ls
]
