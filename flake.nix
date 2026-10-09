{
  description = "Lightbridge Cursor";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs =
    { nixpkgs, ... }:
    let
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

    in
    {
      packages = forAllSystems (_: { });
    };
}
