{
  pkgs,
  ...
}:
{
  packages = with pkgs; [
    reflex
    gnumake
    inkscape
  ];

  languages.texlive = {
    enable = true;
    base = pkgs.texliveMedium;
    packages = [
      "ucs"
      "tabto-ltx"
      "anyfontsize"
      "subfiles"
      "svg"
      "transparent"
      "catchfile"
    ];
  };
}
