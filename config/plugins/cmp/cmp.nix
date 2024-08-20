{
  plugins = {
    cmp-emoji = { enable = true; };
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        snippet = { expand = "luasnip"; };
        window = {
          completion = { border = "solid"; };
          documentation = { border = "solid"; };
        };
        completion = {
          completeopt = "menu,menuone";
        };
        sources = [
          { name = "git"; }
          { name = "emoji"; }
          { name = "nvim_lsp"; }
          { name = "nvim_lua"; }
          {
            name = "luasnip";
            keywordLength = 3;
          }
          { 
            name = "buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          {
            name = "path";
            keywordLength = 3;
          }
        ];
        mapping = {
          "<c-p>" = "cmp.mapping.select_prev_item()";
          "<c-n>" = "cmp.mapping.select_next_item()";
          "<c-d>" = "cmp.mapping.scroll_docs(-4)";
          "<c-f>" = "cmp.mapping.scroll_docs(4)";
          "<c-space>" = "cmp.mapping.complete()";
          "<c-e>" = "cmp.mapping.close()";
          "<c-y>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
        };
      };
    };
    cmp-nvim-lsp = { enable = true; };
    cmp-nvim-lua = { enable = true; };
    cmp-buffer = { enable = true; };
    cmp-path = { enable = true; };
    cmp_luasnip = { enable = true; };
    cmp-cmdline = { enable = false; };
  };
}
