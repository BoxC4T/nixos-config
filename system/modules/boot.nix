{config, pkgs, lib, ...}:

{
	boot.loader = {
		#Fuck off Systemd, you make duel booting stupid (atleast for me)
		systemd-boot.enable = false;
		#ALL HAIL GRUB
		grub = {
			enable = true;
			device = "nodev";
			useOSProber = true;
			efiSupport = true;
			default = "saved";
			extraConfig = "GRUB_SAVEDEFAULT=true";
		};
		efi = {
			canTouchEfiVariables = true;
			efiSysMountPoint = "/boot";
		};	
	};
}
