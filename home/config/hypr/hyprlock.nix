{...}: {
  programs.hyprlock = {
    enable = true;
    settings = {
      auth = {
        fingerprint = {
          enabled = true;
          message = "Place your finger on the sensor";
          finger_down_message = "Scanning...";
          unrecognized_finger_delay_ms = 500; # Adjust as needed
        };
      };
      background = {
        monitor = "";
        color = "rgb(35, 33, 54)";
      };
      input-field = {
        monitor = "";
        size = "250, 60";
        outline_thickness = 2;
        dots_size = 0.2;
        dots_spacing = 0.35;
        dots_center = true;
        outer_color = "rgb(48, 43, 64)";
        inner_color = "rgb(48, 43, 64)";
        font_color = "rgb(157, 48, 240)";
        fade_on_empty = false;
        rounding = -1;
        check_color = "rgb(204, 136, 34)";
        placeholder_text = "<i><span foreground='##e0def4'>Input Password...</span></i>";
        hide_input = false;
        position = "0, -200";
        halign = "center";
        valign = "center";
      };
      # Hours
      label = [
        {
          monitor = "";
          text = ''cmd[update:1000] echo "<b><big> $(date +"%H") </big></b>"'';
          color = "rgb(224, 222, 244)";
          font_size = 112;
          font_family = "Victor Mono 10";
          position = "0, 220";
          halign = "center";
          valign = "center";
        }

        # Minutes
        {
          monitor = "";
          text = ''cmd[update:1000] echo "<b><big> $(date +"%M") </big></b>"'';
          color = "rgb(224, 222, 244)";
          font_size = 112;
          font_family = "Victor Mono 10";
          position = "0, 80";
          halign = "center";
          valign = "center";
        }

        # Today
        {
          monitor = "";
          text = ''cmd[update:18000000] echo "<b><big> "$(date +'%A')" </big></b>'';
          color = "rgb(224, 222, 244)";
          font_size = 22;
          font_family = "Victor Mono 10";

          position = "0, 30";
          halign = "center";
          valign = "center";
        }

        # Week
        {
          monitor = "";
          text = ''cmd[update:18000000] echo "<b> "$(date +'%d %b')" </b>"'';
          color = "rgb(224, 222, 244)";
          font_size = 18;
          font_family = "Victor Mono 10";

          position = "0, 6";
          halign = "center";
          valign = "center";
        }

        # Degrees
        {
          monitor = "";
          text = ''cmd[update:18000000] echo "<b>Feels like<big> "$(curl -s 'wttr.in?format=%t' | tr -d '+')" </big></b>"'';
          color = "rgb(224, 222, 244)";
          font_size = 18;
          font_family = "Victor Mono 10";

          position = "0, 40";
          halign = "center";
          valign = "bottom";
        }
      ];
    };
  };
}
