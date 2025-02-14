{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
      jnoortheen.nix-ide
    ];
    userSettings = {
      "workbench.colorTheme" = "Catppuccin Mocha";
      "window.titleBarStyle" = "custom";
    };
  };
}
