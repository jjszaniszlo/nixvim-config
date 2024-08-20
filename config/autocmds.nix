{
  autoGroups = {
    restore_cursor = {};
  };
  autoCmd = [
    {
      group = "restore_cursor";
      event = ["BufReadPost"];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if
              vim.fn.line([['"]]) > 1
              and vim.fn.line([['"]]) <= vim.fn.line("$")
              and vim.bo.filetype ~= "commit"
              and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
            then
              vim.cmd([[normal! g`"]])
            end
          end
        '';
      };
    }
  ];
}
