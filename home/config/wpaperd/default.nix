{...}: {
  xdg.configFile."wpaperd/framework_background.png".source = ./framework_background.png;

  services.wpaperd = {
    enable = true;

    settings = {
      eDP-2 = {
        path = "~/.config/wpaperd/framework_background.png";
        apply-shadow = false;
      };
    };
  };
}
