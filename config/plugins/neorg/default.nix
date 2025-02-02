_: {
  imports = [
    ./nabla.nix
    ./image.nix
  ];

  plugins.neorg = {
    enable = true;
    settings.load = import ./modules.nix;
  };
}
