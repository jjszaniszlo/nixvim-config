_: {
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        dartls = {
          enable = true;
          package = null;
        };
        hls = {
          enable = true;
          package = null;
        };
        jdt-language-server = {
          enable = true;
          package = null;
        };
        lua-ls.enable = true;
        nixd.enable = true;
        ols = {
          enable = true;
          package = null;
        };
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
