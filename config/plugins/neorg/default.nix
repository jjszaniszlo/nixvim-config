_: {
  imports = [./nabla.nix];

  plugins.neorg = {
    enable = true;
    modules = import ./modules.nix;
  };
}
