{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
    ];
    userSettings = {
      "workbench.colorTheme" = "Catppuccin Mocha";
    };
  };
}
