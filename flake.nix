{
  description = "Flim - Simple Neovim Flake";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };

    flake-utils = {
      url = "github:numtide/flake-utils";
    };

    rustaceanvim = {
      url = "github:mrcjkb/rustaceanvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    fenix,
    nixpkgs,
    flake-utils,
    rustaceanvim,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            rustaceanvim.overlays.default
            fenix.overlays.default
          ];
        };

        # Add additional config files to nix store.
        nvimRtp = pkgs.stdenv.mkDerivation {
          name = "nvim-after";
          src = ./config;

          buildPhase = ''
            mkdir -p $out/after/ftplugin
          '';

          installPhase = ''
            cp -r after/ftplugin $out/after/ftplugin
          '';
        };

        # Below definition of neovimConfig explained from right to left:
        # 1. Read all files form configDir (defined in let statement).
        # 2. Get only the file names in list.
        # 3. For every file in list read the contents into a string and put them in a list.
        # 4. Concatenate every string in list to single string separate by newline characters.
        neovimConfig = let
          configDir = ./config/lua;
        in
          builtins.concatStringsSep
          "\n" (
            builtins.map
            (file: builtins.readFile "${configDir}/${file}")
            (builtins.attrNames (builtins.readDir "${configDir}"))
          )
          + ''vim.opt.rtp:append('${nvimRtp}/after/ftplugin')'';

        plugins = import ./plugins.nix {inherit pkgs;};
        dependencies = import ./dependencies.nix {inherit pkgs;};
      in rec {
        # Use Neovim wrapper to add runtime dependencies, plugins and custom configuration.
        packages.flim = pkgs.wrapNeovim pkgs.neovim-unwrapped {
          viAlias = true;
          vimAlias = true;
          # Add runtime dependencies that are not plugins.
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
        apps.nvim = {
          type = "app";
          program = "${defaultPackage}/bin/nvim";
        };

        defaultApp = apps.nvim;
        defaultPackage = packages.flim;

        formatter = pkgs.alejandra;

        devShells = {
          default = pkgs.mkShell {
            NIX_CONFIG = "extra-experimental-features = nix-command flakes repl-flake";
            nativeBuildInputs = with pkgs; [
              git
              pre-commit
              ruby
            ];
          };
        };
      }
    );
}
