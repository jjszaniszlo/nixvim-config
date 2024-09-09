_: {
  imports = [
    ./nabla.nix
    ./image.nix
  ];

  plugins.neorg = {
    enable = true;
    modules = import ./modules.nix;
  };
}
