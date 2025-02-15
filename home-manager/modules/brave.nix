{ pkgs, ... }:
{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    extensions = [
      # Dark Reader
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; }

      # Bitwarden
      { id = "nngceckbapebfimnlniiiahkandclblb"; }

      # Sponsorblock
      { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; } 
    ];
    commandLineArgs = [
      
    ];
  };
}