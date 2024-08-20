{pkgs, ...}: {
  plugins.nvim-tree-lua = {
    enable = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    nvim-web-devicons
  ];
}
