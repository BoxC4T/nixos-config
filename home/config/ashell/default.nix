{inputs, pkgs,  ...}:
{


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
				background_color = "#1e1e2e";
				primary_color = "#b077ed";
				secondary_color = "#11111b";
				success_color = "#a6e3a1";
				danger_color = "#f38ba8";
				text_color = "#bc85ff";
				workspace_colors = [ "#964df0" ];
				special_workspace_colors = [ "#964df0" ];
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
