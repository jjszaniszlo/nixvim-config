_: {
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        omnisharp.enable = true;
        dartls.enable = true;
        hls.enable = true;
        jdt-language-server.enable = true;
        lua-ls.enable = true;
        nixd.enable = true;
        ols.enable = true;

        rust-analyzer = {
          enable = true;
          package = null;
          installRustc = false;
          installCargo = false;
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gD = {
            action = "definition";
            desc = "[LSP] Goto Definition";
          };
          gd = {
            action = "declaration";
            desc = "[LSP] Goto Declaration";
          };
          gi = {
            action = "implementation";
            desc = "[LSP] Goto implementation";
          };
          K = {
            action = "hover";
            desc = "[LSP] Hover";
          };
          "<c-k" = {
            action = "signature_help";
            desc = "[LSP] Signature help";
          };
          "<leader>r" = {
            action = "rename";
            desc = "[LSP] Rename";
          };
          "<space>a" = {
            action = "code_action";
            desc = "[LSP] View code actions";
          };
        };
        diagnostic = {
        };
      };
    };
  };
}
