{config, pkgs, ...}:
let
	custAliases = {
		full-clean = ''
			nix-collect-garbage -d

			sudo nix-collect-garbage -d

			sudo /run/current-system/bin/switch-to-conifguration boot

		'';
		rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config#main-config";
		full-rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config#main-config && home-manager switch --flake ~/nixos-config#home-config";
		home-rebuild = "home-manager switch --flake ~/nixos-config#home-config";
	};
in
{
	programs = {
		zsh = {
			enable = true;
			autosuggestion.enable = true;
			syntaxHighlighting = {
				enable = true;
				highlighters = [ "main" "brackets" "pattern" "regexp" "root" "line" ];
				};

			historySubstringSearch.enable = true;

    			history = {
				ignoreDups = true;
				save = 10000;
				size = 10000;
				};

			oh-my-zsh = {
				enable = true;
			};
				
			shellAliases = custAliases;

		};
	};
}
