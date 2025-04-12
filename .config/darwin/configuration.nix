{ pkgs, ... }:

{
  users.users.vasu = {
    name = "vasu.adari";
    home = "/Users/vasu.adari";
  };


  nix.settings.experimental-features = ''
    auto-optimise-store = true
    experimental-features = nix-command flakes
    extra-platforms = x86_64-darwin aarch64-darwin
  '';

  nix.enable = false;
  system.stateVersion = 6;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";

  security.pam.services.sudo_local.touchIdAuth = true;
  security.pam.services.sudo_local.reattach = true;
  security.pam.services.sudo_local.watchIdAuth = true;

  networking.knownNetworkServices = [
    "Wi-Fi"
    "Thunderbolt Bridge"
    "USB 10/100/1000 LAN"
  ];
  networking.dns = [ "127.0.0.1" "1.1.1.1" ];

  environment.launchDaemons.dnsmasq.enable = true;

  launchd.daemons.dnsmasq = {
    command = "/opt/homebrew/sbin/dnsmasq --conf-file=/Users/vasu.adari/.config/dnsmasq.conf";
    serviceConfig = {
      KeepAlive = true;
    };
  };

  launchd.daemons.colima = {
    command = "/etc/profiles/per-user/vasu.adari/bin/colima start";
  };
}
