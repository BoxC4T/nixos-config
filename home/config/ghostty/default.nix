{ ... }:
{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "duskfox";
      background-opacity = 0.1;
    };
    enableZshIntegration = true;
  };
}
