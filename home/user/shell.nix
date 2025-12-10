{config, pkgs, ...}:
let
	custAliases = {
		full-clean = ''
			nix-collect-garbage -d
			sudo nix-collect-garbage -d
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
			plugins = [
				{
        				name = "powerlevel10k-config";
        				src = ./p10k;
        				file = "p10k.zsh";
      				}
				{
       					name = "zsh-powerlevel10k";
        				src = "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/";
        				file = "powerlevel10k.zsh-theme";
      				}
			];
			
			shellAliases = custAliases;

		};
	};
}
