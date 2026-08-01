{
  description = "Flake for Yoga910";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.ReNix = nixpkgs.lib.nixosSystem {
       modules = [ ./configuration.nix ];
    };
  };
}
