{ config, pkgs, ...}:

{
  nixpkgs.overlays = [
    (import (builtins.fetchGit {
        url = "https://github.com/martiert/nix-overlay";
	rev = "a071330e59192ce2d0551a8f4f5740e8b8da9a87";
      })
    )
  ];

  services.udev.packages = [ pkgs.projecteur ];
}
