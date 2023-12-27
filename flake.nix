{
  description = "Flim - Simple Neovim Flake";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };

    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  } @ inputs:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };

        # Below definition of neovimConfig explained from right to left:
        # 1. Read all files form configDir (defined in let statement).
        # 2. Get only the file names in list.
        # 3. For every file in list read the contents into a string and put them in a list.
        # 4. Concatenate every string in list to single string separate by newline characters.
        neovimConfig = let
          configDir = ./config/lua;
        in
          builtins.concatStringsSep "\n" (builtins.map (file: builtins.readFile "${configDir}/${file}") (builtins.attrNames (builtins.readDir "${configDir}")));

        plugins = import ./plugins.nix {inherit pkgs;};
        dependencies = import ./dependencies.nix {inherit pkgs;};
      in rec {
        formatter = pkgs.alejandra;

        defaultApp = apps.nvim;
        defaultPackage = packages.flim;

        apps.nvim = {
          type = "app";
          program = "${defaultPackage}/bin/nvim";
        };

        # Use Neovim wrapper to add runtime depencies, plugins and custom configuration.
        packages = {
          flim = pkgs.wrapNeovim pkgs.neovim-unwrapped {
            viAlias = true;
            vimAlias = true;
            # Add runtime dependecies that are not plugins.
            extraMakeWrapperArgs = ''--prefix PATH : "${pkgs.lib.makeBinPath dependencies}"'';
            configure = {
              # wrapNeovim not yet supports a custom luaRC. See here: https://github.com/NixOS/nixpkgs/issues/211998
              # So we use a Neovim feature that lets us wrap lua code inside the generated init.vim.
              customRC = builtins.concatStringsSep "\n" ["lua << EOF" neovimConfig "EOF"];
              packages.withPlugins = {
                start = plugins;
              };
            };
          };
        };
      }
    );
}
