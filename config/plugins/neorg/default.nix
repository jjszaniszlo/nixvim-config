_: {
  imports = [
    ./nabla.nix
  ];

  plugins.neorg = {
    enable = true;
    settings.load = import ./modules.nix;
  };
}
