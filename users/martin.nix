{ pkgs, ... }:

{
  users = {
    users = {
      martin = {
        isNormalUser = true;
        extraGroups = [ "wheel" "audio" "uucp" "video" "docker"];
        group = "martin";
        shell = pkgs.zsh;
      };
    };
    groups = {
      martin = {};
    };
  };
}
