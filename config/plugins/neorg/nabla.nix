{pkgs, ...}: {
  config.extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nabla";
      src = pkgs.fetchFromGitHub {
          owner = "jbyuki";
          repo = "nabla.nvim";
          rev = "27a6ea9ed7452bb9e0b19eb0942b5bcf7d051b2f";
          sha256 = "1dnd6s6abwxihliqqyl1vrds14w502m0x7aadlxrrfh970bqikg0";
      };
    })
  ];
}
