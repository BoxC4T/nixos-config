{pkgs, ...}: {
  programs.zsh.enable = true;
  users.users.cat = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
}
