{pkgs, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home.packages = with pkgs; [
    firefox
    gh
    lazygit
    brightnessctl
    power-profiles-daemon
    pulseaudioFull
    pavucontrol
    networkmanagerapplet
    obsidian
    vesktop
    blueberry
    hyprpicker
    hyprshot
    krita
    prettier

    rustc
    cargo
    gcc
    bun
    yt-dlp
    spotdl
  ];
}
