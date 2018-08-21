{ config, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

   i18n = {
     consoleKeyMap = "us";
     defaultLocale = "en_US.UTF-8";
   };

  time.timeZone = "Europe/Amsterdam";

  environment.systemPackages = with pkgs; [
    ag
    clang
    firefox
    fzf
    gettext
    git
    gnumake
    neovim
    nodejs
    php
    python
    ruby
    tmux
    vim
    wget
    xclip
    zig
  ];

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.libinput.enable = true;
  services.xserver.desktopManager.gnome3.enable = true;
  services.xserver.desktopManager.default = "gnome3";

  users.extraUsers.jfo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    uid = 1000;
  };

  system.stateVersion = "18.03";
}