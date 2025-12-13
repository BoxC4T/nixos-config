{...}: {
  imports = [
    ./config
    ./user
  ];

  home.username = "cat";
  home.homeDirectory = "/home/cat";
  home.stateVersion = "25.11";
}
