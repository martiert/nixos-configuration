{ config, pkgs, lib, ... }:

{
  services.openssh = {
    enable = true;
    allowSFTP = false;
    permitRootLogin = "no";
    hostKeys = [ { type = "ed25519"; path = "/etc/ssh/ssh_host_ed25519_key"; } ];
    passwordAuthentication = true;
  };
}
