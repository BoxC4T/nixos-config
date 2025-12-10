{config, pkgs, ...}:

{

	home.packages = with pkgs; [
		firefox
		gh
		lazygit
		brightnessctl
		power-profiles-daemon
		pulseaudioFull
		pavucontrol
		networkmanagerapplet
		kdePackages.dolphin
		
	];


}
