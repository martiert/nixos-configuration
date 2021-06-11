{ config, pkgs, ...}:

{
  nixpkgs.overlays = [
    (import (builtins.fetchGit {
        url = "https://github.com/martiert/nix-overlay";
	rev = "408013c379861792a1506f58781039731c0f3fca";
      })
    )
  ];

  services.udev.packages = [ pkgs.projecteur ];
}
