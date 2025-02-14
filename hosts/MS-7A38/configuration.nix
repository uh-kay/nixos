{ pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ../../modules
    ];

  networking.hostName = "nixos";
  
  users.users.uhkay = {
    isNormalUser = true;
    description = "uhkay";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [

    ];
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "uhkay" = import ../../home-manager/home.nix;
    };
  };

  environment.systemPackages = with pkgs; [

  ];

  system.stateVersion = "24.11";

}
