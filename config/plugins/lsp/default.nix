{pkgs, ...}: {
  imports = [
    ./chatgpt.nix
  ];
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        clangd.enable = true;
        omnisharp.enable = true;
        dartls.enable = true;
        hls = {
          enable = true;
          installGhc = false;
        };
        jdtls.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
        ols.enable = true;
        gopls.enable = true;
        rust_analyzer = {
          enable = true;
          installRustc = false;
          installCargo = false;
        };
        zls.enable = true;
        ocamllsp = {
          enable = true;
          package = pkgs.ocamlPackages.ocaml-lsp;
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
          # K = {
          #   action = "hover";
          #   desc = "[LSP] Hover";
          # };
          "<c-k>" = {
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
