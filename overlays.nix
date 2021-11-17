{ config, pkgs, ...}:

{
  nixpkgs.overlays = [
    (import (builtins.fetchGit {
        url = "https://github.com/martiert/nix-overlay";
	rev = "a071330e59192ce2d0551a8f4f5740e8b8da9a87";
      })
      )
    (import "${builtins.fetchTarball https://github.com/vlaci/openconnect-sso/archive/v0.7.2.tar.gz}/overlay.nix")
  ];

  services.udev.packages = [ pkgs.projecteur ];
}
