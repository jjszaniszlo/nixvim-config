_: {
  plugins.neorg = {
    enable = true;
    lazyLoading = true;
    modules = import ./modules.nix;
  };
}
