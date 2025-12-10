{ pkgs, ... }:
{
	wayland.windowManager.hyprland = {
		enable = true;
		package = null;
		portalPackage = null;

		xwayland = {
			enable = true;
		};
		settings = {
			general = {
				"$mainMod" = "SUPER";
				gaps_in = 0;
    				gaps_out = 0;
    				border_size = 0;
				"col.active_border" = "rgba(00000000)";
				"col.inactive_border" = "rgba(00000000)";
				resize_on_border = true ;
				allow_tearing = false;
			};
			decoration = {
    				active_opacity = 1.0;
    				inactive_opacity = 0.75;
			};
			animations = {
				enabled = true;
				bezier = [
					"easeOutQuint,0.23,1,0.32,1"
					"easeInOutCubic,0.65,0.05,0.36,1"
					"linear,0,0,1,1"
					"almostLinear,0.5,0.5,0.75,1.0"
					"quick,0.15,0,0.1,1"
				];


				animation = [
					"global, 1, 10, default"
    					"border, 1, 5.39, easeOutQuint"
    					"windows, 1, 4.79, easeOutQuint"
    					"windowsIn, 1, 4.1, easeOutQuint, popin 87%"
   					"windowsOut, 1, 1.49, linear, popin 87%"
   					"fadeIn, 1, 1.73, almostLinear"
    					"fadeOut, 1, 1.46, almostLinear"
    					"fade, 1, 3.03, quick"
    					"layers, 1, 3.81, easeOutQuint"
    					"layersIn, 1, 4, easeOutQuint, fade"
    					"layersOut, 1, 1.5, linear, fade"
    					"fadeLayersIn, 1, 1.79, almostLinear"
    					"fadeLayersOut, 1, 1.39, almostLinear"
					"workspaces, 1, 1.94, almostLinear, fade"
    					"workspacesIn, 1, 1.21, almostLinear, fade"
    					"workspacesOut, 1, 1.94, almostLinear, fade"
				];


			};
			misc = {
              			disable_hyprland_logo = true;
              			disable_splash_rendering = true;
            		};
			input = {
				kb_layout = "us";
    				follow_mouse = 1;

    				sensitivity = 0;
    				touchpad =  {
        				natural_scroll = false;
    				};
			};


			#device {
    			#	name = "logitech-g305-1"
    			#	sensitivity = -1.0
			#};


			bind = [
				"$mainMod, Q, exec, ghostty"
				
				"$mainMod, C, killactive"
				"$mainMod, M, exit"
				"$mainMod, Space, exec, vicinae toggle"
				"$mainMod, 1, workspace, 1"
				"$mainMod, 2, workspace, 2"
				"$mainMod, 3, workspace, 3"
				"$mainMod, 4, workspace, 4"
				"$mainMod, 5, workspace, 5"
				"$mainMod, 6, workspace, 6"
				"$mainMod, 7, workspace, 7"
				"$mainMod, 8, workspace, 8"
				"$mainMod, 9, workspace, 9"
				"$mainMod, 0, workspace, 10"
				#"bind = $mainMod ALT, W, exec, pkill waybar && hyprctl dispatch exec waybar"
				
			];

			bindel = [
				",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
				",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
				",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
				",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
				",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
				",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
			];
			
			exec-once = [
				"vicinae server"
				"ashell"
			];
		};
	};
	home.pointerCursor = {
  		gtk.enable = true;
  		# x11.enable = true;
  		package = pkgs.bibata-cursors;
  		name = "Bibata-Modern-Classic";
  		size = 16;
	};	
}
