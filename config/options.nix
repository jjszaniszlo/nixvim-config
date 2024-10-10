{pkgs, ...}: {
  config = {
    extraPackages = with pkgs; [
      imagemagick
    ];
    extraLuaPackages = l: [
      l.lua-utils-nvim
      l.pathlib-nvim
      l.plenary-nvim
      l.magick
    ];
    clipboard = {
      providers.wl-copy.enable = true;
    };
    opts = { 
      number = true;
      relativenumber = true;
      ruler = true;
      splitright = true;
      splitbelow = true;
      smarttab = true;
      expandtab = true;
      smartindent = true;
      autoindent = true;
      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;
      autoread = true;
      title = true;
      termguicolors = true;
      hlsearch = true;
      hidden = true;
      encoding = "utf-8";
      fileencoding = "utf-8";
      showmode = false;
      swapfile = false;
      laststatus = 3;
      scrolloff = 7;
      sidescrolloff = 5;
      clipboard = "unnamedplus";
      wrap = false;
      cursorline = true;
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
      undofile = true;
      undolevels = 1000;
      undoreload = 10000;
      updatetime = 100;
      exrc = true;
    };
  };
}
