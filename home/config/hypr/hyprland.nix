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
			};
			bind = [
				"$mainMod, Q, exec, kitty"
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
			];
			exec-once = [
				"vicinae server"
			];
		};
	};
}
