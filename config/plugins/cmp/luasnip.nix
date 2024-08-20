{
  plugins = {
    luasnip = {
      enable = true;
      settings = {
        history = true;
        updateevents = "TextChanged,TextChangedI";
      };
    };
    friendly-snippets = {
      enable = true;
    };
  };
  extraConfigLua = ''
  '';
}
