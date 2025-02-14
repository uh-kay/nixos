{ pkgs, ... }:
{
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/wm/preferences" = {
        button-layout = ":minimize,maximize,close";
      };
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
      "org/gnome/settings-daemon/plugins/power" = {
        sleep-inactive-ac-type = "nothing";
      };
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = [
          "blur-my-shell@aunetx"
          "dash-to-panel@jderose9.github.com"
          "arcmenu@arcmenu.com"
        ];
      };
    };
  };

  home.packages = with pkgs.gnomeExtensions; [
    blur-my-shell
    dash-to-panel
    arcmenu
  ];
}