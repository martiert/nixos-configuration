{ config, pkgs, ... }:

{
  imports =
    [
      ./overlays.nix
      ./users.nix
      ./xorg.nix
    ];

  # Set your time zone.
  time.timeZone = "Europe/Oslo";

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;

  security.sudo.extraConfig = ''
    Defaults targetpw
    Defaults env_keep = "EDITOR LANG LANGUAGE LC_*"
  '';

  environment.systemPackages = [
    pkgs.git
  ];

  nix.extraOptions = ''
    keep-outputs = true
    keep-derivations = true
  '';

}
