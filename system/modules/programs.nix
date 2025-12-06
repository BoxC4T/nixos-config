{config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		btop
		fzf
		git
		gnumake
		home-manager
		kitty
		neofetch
		wget
	];
}
