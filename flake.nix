{
	description = "Cat's Nixos Config";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
		nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager/release-25.11";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
		
		nixvim = {
			url = "github:nix-community/nixvim/nixos-25.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	
		vicinae.url = "github:vicinaehq/vicinae";

		nixos-hardware.url = "github:NixOS/nixos-hardware/master";

		hyprland.url = "github:hyprwm/Hyprland";


	};

	outputs = {self, nixpkgs, nixpkgs-unstable, home-manager, nixos-hardware, ... }@inputs:
	let
		lib = nixpkgs.lib;
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
		pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
	in {
		nixosConfigurations = {
			main-config = nixpkgs.lib.nixosSystem {
				inherit system;
				modules = [
					./system/configuration.nix
					nixos-hardware.nixosModules.framework-16-7040-amd
				];
				specialArgs = {
					inherit pkgs-unstable;
				};	
			};
		};
		homeConfigurations = {
			home-config = home-manager.lib.homeManagerConfiguration {
				inherit pkgs;
				modules = [ ./home ];
				extraSpecialArgs = {
					inherit pkgs-unstable inputs;
				};
			};
		};
	};	
}
