{config, pkgs, lib, ...}:

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
		hyprpolkitagent
	];
	
	#love me a good font 
	fonts.packages = builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}
