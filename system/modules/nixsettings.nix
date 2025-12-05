{ config, pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;

	nix = {
		settings = {
			warn-dirty = false;
			experimental-features = [ "nix-command" "flakes" ];
			auto-optimise-store = true;
		};
		
		gc = {
			automatic = true;
			dates = "weakly";
			options = "--delete-older-than 7d";
		};
	};
}
