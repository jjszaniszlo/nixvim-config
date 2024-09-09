{
  keymaps = [
    {
      key = "<leader>q";
      action.__raw = ''
        function() 
          if #vim.api.nvim_tabpage_list_wins(0) > 1 then
            vim.cmd.close()
          else
            vim.cmd.bd()
          end
        end
      '';
      options.desc = "Close current buffer or split";
    }
    {
      key = "<leader>n";
      action = "noh";
      options.desc = "Disable highlighting";
    }
    {
      key = "<c-h>";
      action = "<c-w>h";
      options.desc = "Move window left";
    }
    {
      key = "<c-l>";
      action = "<c-w>l";
      options.desc = "Move window right";
    }
    {
      key = "<c-j>";
      action = "<c-w>j";
      options.desc = "Move window down";
    }
    {
      key = "<c-k>";
      action = "<c-w>j";
      options.desc = "Move window up";
    }
    {
      key = "[b";
      action = "bprev";
      options.desc = "Goto previous buffer";
    }
    {
      key = "]b";
      action = "bnext";
      options.desc = "Goto next buffer";
    }
    {
      key = "n";
      action = "nzzzv";
      options.desc = "Goto previous search location";
    }
    {
      key = "N";
      action = "Nzzzv";
      options.desc = "Goto next search location";
    }
    {
      key = "<c-u>";
      action = "<c-u>zz";
      options.desc = "Move up half page";
    }
    {
      key = "<c-d>";
      action = "<c-d>zz";
      options.desc = "Move down half page";
    }
    {
      key = "Q";
      action = "<nop>";
    }
    {
      key = "<leader>l";
      action = "lopen";
      options.desc = "Open location list";
    }
    {
      key = "<c-n>";
      action.__raw = ''
        function()
          if not pcall(vim.cmd.lnext) then
            vim.cmd.lfirst()
          end
        end
      '';
      options.desc = "Select next item in location list";
    }
    {
      key = "<c-p>";
      action.__raw = ''
        function()
          if not pcall(vim.cmd.lnext) then
            vim.cmd.llast()
          end
        end
      '';
      options.desc = "Select previous item in location list";
    }
    {
      key = "<leader>p";
      action = ''"_dP'';
      mode = "x";
      options.desc = "Paste over without yanking";
    }
    {
      key = "<leader>d";
      action = ''"_d'';
      mode = ["x" "n"];
      options.desc = "Delete without yanking";
    }
    {
      key = "<esc>";
      action = ''<c-\\><c-n>'';
      mode = "t";
      options.desc = "Terminal escape";
    }
    {
      key = "<leader>p";
      action.__raw = ''
        function()
          require("nabla").popup({border = "rounded"})
        end
      '';
      options.desc = "Open nabla symbols";
    }
  ];
}
