{pkgs}:
with pkgs; [
  fzf
  ripgrep

  # Lintets
  tflint

  # Language Servers
  nil
  pyright
  lua-language-server
  marksman
  terraform-ls
]
