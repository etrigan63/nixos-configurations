# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  #services.xserver.displayManager.defaultSession = "none+dwm";
  services.xserver.windowManager.dwm.enable = true;

  services.xserver.windowManager.dwm.package = pkgs.dwm.override {
    conf = /home/erik/.config/arco-dwm/config.def.h;
}

