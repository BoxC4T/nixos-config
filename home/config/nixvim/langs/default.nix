{lib, ...}: {
  imports = with builtins;
  with lib;
    map (fn: ./${fn}) (
      filter (fn: (fn != "default.nix" && !hasSuffix ".md" "${fn}")) (attrNames (readDir ./.))
    );

  programs.nixvim = {
    plugins.conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = "fallback";
          timeout_ms = 500;
        };
        notify_on_error = true;
      };
    };

    plugins.lsp = {
      enable = true;
      inlayHints = true;
    };

    plugins.none-ls = {
      enable = true;
    };
  };
}
