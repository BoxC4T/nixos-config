{
  pkgs,
  pkgs-unstable,
  ...
}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home.packages = with pkgs; [
    gh-markdown-preview
    gh
    lazygit
    brightnessctl
    power-profiles-daemon
    pulseaudioFull
    pavucontrol
    networkmanagerapplet
    obsidian
    equicord
    blueman
    hyprpicker
    hyprshot
    krita
    nur.repos.Ev357.helium
    github-desktop
    pkgs-unstable.freecad
    pkgs-unstable.feishin
  ];
}
