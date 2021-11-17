{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./overlays.nix
      ./fonts.nix
      ./users.nix
      ./xorg.nix
    ];

  # Set your time zone.
  time.timeZone = "Europe/Oslo";

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;

  services.printing.enable = true;
  services.avahi.enable = true;
  services.avahi.nssmdns = true;

  security.sudo.extraConfig = ''
    Defaults targetpw
    Defaults env_keep = "EDITOR LANG LANGUAGE LC_*"
  '';

  documentation.dev.enable = true;

  environment.systemPackages = [
    pkgs.git
    pkgs.nssmdns
    pkgs.man-pages
    pkgs.man-pages-posix
    pkgs.openconnect_openssl
    pkgs.openconnect-sso
  ];

  nix.extraOptions = ''
    keep-outputs = true
    keep-derivations = true
  '';

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "cnijfilter2"
  ];
}
