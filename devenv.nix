{
  pkgs,
  ...
}:
{
  packages = with pkgs; [
    reflex
    gnumake
  ];

  languages.texlive = {
    enable = true;
    base = pkgs.texliveMedium;
    packages = [
      "ucs"
      "tabto-ltx"
      "anyfontsize"
      "subfiles"
    ];
  };
}
