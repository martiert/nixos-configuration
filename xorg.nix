{
  services.xserver = {
    enable = true;
    layout = "us";

    libinput.enable = true;
    displayManager = {
      sddm.enable = true;
      defaultSession = "sway";
    };

    windowManager.i3.enable = true;

    useGlamor = true;
  };

  programs.sway.enable = true;
  hardware.opengl.driSupport32Bit = true;
}
