{config, pkgs, ... }:

{
	users.users.cat = {
		isNormalUser = true;
		shell = pkgs.zsh;
		extraGroups = [
			"wheel"
			"networkmanager"
		];
	};
}
