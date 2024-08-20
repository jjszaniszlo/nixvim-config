{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = {
        enable = true;
      };
      fzf-native = {
        enable = true;
      };
    };
    settings = {
      defaults = {
        theme = "dropdown";
      };
    };
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "[Telescope] Find Files";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "[Telescope] Live Grep";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "[Telescope] Buffers";
        };
      };
      "<leader>fh" = {
        action = "help_tags";
        options = {
          desc = "[Telescope] Help Tags";
        };
      };
      "<leader>fr" = {
        action = "lsp_references";
        options = {
          desc = "[Telescope] LSP references";
        };
      };
      "<leader>fc" = {
        action = "colorscheme";
        options = {
          desc = "[Telescope] Colorscheme preview";
        };
      };
      "<leader>fk" = {
        action = "keymaps";
        options = {
          desc = "[Telescope] Keymaps";
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<space>e";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "[Telescope] Document diagnostics";
      };
    }
  ];
}
