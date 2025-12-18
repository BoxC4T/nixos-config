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
        font_name = "Comic Sans MS";
        style = "Islands";
        opacity = 1.0;
        primary_color = "#232136";
        success_color = "#9ece6a";
        text_color = "#ffffff";
        workspace_colors = ["#ffffff" "#9ece6a"];
        danger_color = {
          base = "#f7768e";
          weak = "#e0af68";
        };
        background_color = {
          base = "#191726";
          weak = "#24273a";
          strong = "#414868";
        };
        secondary_color = "#0c0d14";
      };
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

      appearance.menu = {
        opacity = 0.7;
        backdrop = 0.3;
      };
    };
  };
}
