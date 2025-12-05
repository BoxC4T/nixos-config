{ config, pkgs, ... }:

{
	networking = {
		hostName = "NixWork";
		networkingmannager.enable = true;
		enableIPv6 = false;
		firewall.enable = false;
	};
}
