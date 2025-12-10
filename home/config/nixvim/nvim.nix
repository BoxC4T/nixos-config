{inputs, ...}:

{

  imports = [
      inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    opts = {
      number = true;
      shiftwidth = 2;
      completeopt = [ "menu" "menuone" "noselect" ];
      termguicolors = true;
    };

    colorschemes.nightfox = {
      enable = true;
      flavor = "duskfox";
    };

    dependencies = {
      #chafa.enable = true;
      #imagemagick.enable = true;
    };
  };
}
