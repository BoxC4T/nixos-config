{inputs, pkgs,  ...}:
{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "duskfox";
      background-opacity = 0.1;
      #background = "#192330";
      #foreground = "#cdcecf";
      #selection-background = "#2b3b51";
      #selection-foreground = "#cdcecf";
      #cursor-color = "#cdcecf";
      #cursor-text = "#192330";
      #palette = [
      #	"0=#393b44"
      #	"1=#c94f6d"
      #	"2=#81b29a"
      #	"3=#dbc074"
      #	"4=#719cd6"
      #	"5=#9d79d6"
      #	"6=#63cdcf"
      #	"7=#dfdfe0"
      #	"8=#575860"
      #	"9=#d16983"
      #	"10=#8ebaa4"
      #	"11=#e0c989"
      #	"12=#86abdc"
      #	"13=#baa1e2"
      #	"14=#7ad5d6"
      #	"15=#e4e4e5"
      #];
    };
    enableZshIntegration = true;
  };
}
