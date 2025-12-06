{config, pkgs, ...}:

{
	home.packages = with pkgs; [
		firefox
		gh
		lazygit
		];
}
