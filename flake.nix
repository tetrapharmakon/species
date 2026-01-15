{
  inputs.nixpkgs.url = "github:Nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
          config = {
            # allowBroken = true; # NOTE: comes in handy to temporarily allow packages marked as broken (e.g. ruby3.3-nokogiri-1.12.5)
          };
        };
        gems = pkgs.bundlerEnv {
          name = "gems";
          ruby = pkgs.ruby_3_3;
          gemdir = ./.;
        };
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.bundix
            gems.wrappedRuby
            gems
          ];
        };
      }
    );
}
