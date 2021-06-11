{ pkgs, ... }:

{
  users.users.martin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "uucp" "video" "docker"];
    shell = pkgs.zsh;
  };
}
