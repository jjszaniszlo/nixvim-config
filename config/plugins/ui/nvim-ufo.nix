{

  keymaps = [ 
    {
      key = "zR";
      mode = "n";
      action.__raw = ''require("ufo").openAllFolds'';
      options.desc = "[UFO] Open all folds.";
    }
    {
      key = "zM";
      mode = "n";
      action.__raw = ''require("ufo").closeAllFolds'';
      options.desc = "[UFO] Close all folds.";
    }
    {
      key = "zr";
      mode = "n";
      action.__raw = ''require("ufo").openFoldsExceptKinds'';
      options.desc = "[UFO] Open folds except kinds.";
    }
    {
      key = "zm";
      mode = "n";
      action.__raw = ''require("ufo").closeFoldsWith'';
      options.desc = "[UFO] Open folds except kinds.";
    }
    {
      key = "K";
      mode = "n";
      action.__raw = ''
        function()
            local winid = require('ufo').peekFoldedLinesUnderCursor()
            if not winid then vim.lsp.buf.hover() end
        end
      '';
      options.desc = "[UFO] Open folds except kinds.";
    }
  ];
  plugins.nvim-ufo = {
    enable = true;
    autoLoad = true;
    luaConfig.pre = ''
      local handler = function(virtText, lnum, endLnum, width, truncate)
          local newVirtText = {}
          local suffix = (' 󰁂 %d '):format(endLnum - lnum)
          local sufWidth = vim.fn.strdisplaywidth(suffix)
          local targetWidth = width - sufWidth
          local curWidth = 0
          for _, chunk in ipairs(virtText) do
              local chunkText = chunk[1]
              local chunkWidth = vim.fn.strdisplaywidth(chunkText)
              if targetWidth > curWidth + chunkWidth then
                  table.insert(newVirtText, chunk)
              else
                  chunkText = truncate(chunkText, targetWidth - curWidth)
                  local hlGroup = chunk[2]
                  table.insert(newVirtText, {chunkText, hlGroup})
                  chunkWidth = vim.fn.strdisplaywidth(chunkText)
                  -- str width returned from truncate() may less than 2nd argument, need padding
                  if curWidth + chunkWidth < targetWidth then
                      suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
                  end
                  break
              end
              curWidth = curWidth + chunkWidth
          end
          table.insert(newVirtText, {suffix, 'MoreMsg'})
          return newVirtText
      end

      -- global handler
      -- `handler` is the 2nd parameter of `setFoldVirtTextHandler`,
      -- check out `./lua/ufo.lua` and search `setFoldVirtTextHandler` for detail.
      require('ufo').setup({
          fold_virt_text_handler = handler
      })
    '';
    settings = {
      setupLspCapabilities = true;
      open_fold_hl_timeout = 150;
      close_fold_kinds_for_ft = {
        default = ["imports" "comment"];
        json = ["array"];
        c = ["commend" "region"];
        rs = ["command" "region"];
      };
      preview = {
        win_config = {
            border = ["" "─" "" "" "" "─" "" ""];
            winhighlight = "Normal:Folded";
            winblend = 0;
        };
        mappings = {
            scrollU = "<C-u>";
            scrollD = "<C-d>";
            jumpTop = "[";
            jumpBot = "]";
        };
      };
      provider_selector = ''
        function(bufnr, ft, buftype)
          local ftMap = {
            vim = "indent",
            python = {"indent"},
            git = "",
          }
          return ftMap[ft] or {'treesitter', 'indent'}
        end
      '';
    };
  };
}
