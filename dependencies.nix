{pkgs}:
with pkgs; [
  fzf
  ripgrep

  # Lintets
  pylint
  shellcheck
  yamllint

  # Language Servers
  gopls
  lua-language-server
  marksman
  nil
  pyright
  rust-analyzer-nightly
  terraform-ls
  tofu-ls
  tflint
  jsonnet-language-server
]
