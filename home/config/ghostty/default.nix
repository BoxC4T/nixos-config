{...}: {
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "duskfox";
    };
    enableZshIntegration = true;
    themes = {
      duskfox = {
        background = "#232136";
        cursor-color = "#cdd6f4";
        cursor-text = "#433c59";
        foreground = "#cdd6f4";
        palette = [
          "0=#e0def4"
          "1=#f38ba8"
          "2=#a6e3a1"
          "3=#f9e2af"
          "4=#89b4fa"
          "5=#f5c2e7"
          "6=#94e2d5"
          "7=#bac2de"
          "8=#585b70"
          "9=#f38ba8"
          "10=#a6e3a1"
          "11=#f9e2af"
          "12=#89b4fa"
          "13=#f5c2e7"
          "14=#94e2d5"
          "15=#a6adc8"
          #palette = 0=#393552
          #palette = 1=#eb6f92
          #palette = 2=#a3be8c
          #palette = 3=#f6c177
          #palette = 4=#569fba
          #palette = 5=#c4a7e7
          #palette = 6=#9ccfd8
          #palette = 7=#e0def4
          #palette = 8=#47407d
          #palette = 9=#f083a2
          #palette = 10=#b1d196
          #palette = 11=#f9cb8c
          #palette = 12=#65b1cd
          #palette = 13=#ccb1ed
          #palette = 14=#a6dae3
          #palette = 15=#e2e0f7
        ];
        selection-background = "#a6adc8";
        selection-foreground = "#353749";
      };
    };
  };
}
