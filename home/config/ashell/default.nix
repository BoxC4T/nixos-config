{...}: {
  programs.ashell = {
    enable = true;

    settings = {
      modules = {
        left = [
          [
            "Clock"
            "Workspaces"
          ]
        ];
        center = [
          "WindowTitle"
        ];
        right = [
          [
            "CustomNotifications"
            "SystemInfo"
            "Settings"
          ]
        ];
      };

      appearance = {
        font_name = "victor-mono";
        style = "Islands";
        opacity = 1.0;
        menu = {
          opacity = 1.0;
          backdrop = 0.0;
        };
        background_color = {
          base = "#232136";
          strong = "#433c59";
          weak = "#302b40";
          #text = ""; #unused
        };
        primary_color = {
          base = "#302b40";
          strong = "#e0def4";
          weak = "#433c59";
          #text = ""; #unused
        };

        secondary_color = {
          base = "#433c59";
          strong = "#433c59";
          #weak = ""; #unused
          #text = ""; #unused
        };

        success_color = {
          base = "#a3be8c";
          #strong = ""; #unused
          #weak = ""; #unused
          #text = ""; #unused
        };

        danger_color = {
          base = "#eb6f92";
          #strong = ""; #unused
          #weak = ""; #unused
          #text = ""; #unused
        };

        text_color = {
          base = "#e0def4";
          #strong = ""; #unused
          #weak = ""; #unused
          #text = ""; #unused
        };

        workspace_colors = [
          {
            base = "#302b40";
            #strong = ""; #unused
            #weak = ""; #unused
            #text = ""; #unused
          }
        ];

        #special_workspace_colors = [ #dont need
        #  {
        #    base = "";
        #    strong = "";
        #    weak = "";
        #    text = "";
        #  }
        #];
      };
      #background = #232136
      #foreground = #e0def4
      #selection-background = #433c59
      #selection-foreground = #e0def4
      #cursor-color = #e0def4
      #cursor-text = #232136
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

      settings = {
        lock_cmd = "hyprlock &";
        audio_sinks_more_cmd = "pavucontrol -t 3";
        audio_sources_more_cmd = "pavucontrol -t 4";
        wifi_more_cmd = "nm-connection-editor";
        vpn_more_cmd = "nm-connection-editor";
        bluetooth_more_cmd = "blueman-manager";
        remove_airplane_btn = false;
        remove_idle_btn = true;
      };
      clock = {
        format = "%a %d %b %Y | %R:%S";
      };
    };
  };
}
