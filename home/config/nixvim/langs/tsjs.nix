{...}: {
  programs.nixvim.plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        javascript = ["prettier"];
        typescript = ["prettier"];
      };
    };

    lsp.servers = {
      ts_ls.enable = true;
      eslint.enable = true;
    };

    none-ls = {
      sources.formatting = {
        prettierd = {
          disableTsServerFormatter = false;
          enable = true;
        };
      };
    };
  };
}
