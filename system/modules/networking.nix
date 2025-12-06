{ config, pkgs, ... }:

{
	networking = {
		hostName = "NixWork";
		networkmanager.enable = true;
		enableIPv6 = false;
		firewall.enable = false;
	};
}
