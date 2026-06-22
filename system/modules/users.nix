{pkgs, ...}: {
  programs.zsh.enable = true;
  users.users.cat = {
    isNormalUser = true;
    shell = pkgs.nushell;
    extraGroups = [
      "wheel"
      "networkmanager"
      "adbusers"
    ];
  };
}
