{pkgs}:
with pkgs; [
  fzf
  ripgrep

  # Lintets
  tflint
  yamllint
  shellcheck

  # Language Servers
  nil
  pyright
  lua-language-server
  marksman
  terraform-ls
  rust-analyzer
]
