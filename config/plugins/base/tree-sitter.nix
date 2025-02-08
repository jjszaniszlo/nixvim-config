{pkgs, ...}:
{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      highlight = {
        enable = true;
        use_languagetree = true;
      };
    };
    folding = true;
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
}
