{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    btop
    fzf
    git
    gnumake
    home-manager
    ghostty
    wget
    hyprpolkitagent
  ];

  #love me a good font
  fonts.packages = builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}
