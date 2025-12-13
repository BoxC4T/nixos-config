{...}: {
  xdg.configFile."wpaperd/framework_background.jpg".source = ./framework_background.jpg;

  services.wpaperd = {
    enable = true;

    settings = {
      eDP-2 = {
        path = "~/.config/wpaperd/framework_background.jpg";
        apply-shadow = false;
      };
    };
  };
}
