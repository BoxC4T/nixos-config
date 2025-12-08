{ pkgs, config, ... }:

{
	programs.waybar = {
		enable = true;
		#style = ./my-waybar-style.css; // Path to your CSS
		settings = {
			mainBar = { 
			modules-left = [ "clock" "hyprland/workspaces" ];
      			modules-center = [ "window" ];
      			modules-right = [ "battery" "network" "pulseaudio" ];
    		};
    		clock = {
      			format = " {:%I:%M %p}"; 
      			tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    		};
  	};
};







}
