{ config, pkgs, ... }:

{
  home = {
    username = "vasu.adari";
    homeDirectory = "/Users/vasu.adari";
    stateVersion = "24.11"; # Please read the comment before changing.
    packages = with pkgs; [
      git
      htop
      curl
      jq
      tmux
      bat
      rustc
      cargo
      kubectl
      k9s
      kubelogin
      kubectx
      awscli2
      kubelogin-oidc
      fzf
      lua-language-server
      tldr
      sops
      next-ls
      python3
      colima
      docker-compose
      docker
      just
      neovim
      slides
    ];
    file = {
      ".profile.d" = {
        source = config.lib.file.mkOutOfStoreSymlink "/Users/vasu.adari/.run_commands/.profile.d";
      };

      ".zshrc" = {
        source = config.lib.file.mkOutOfStoreSymlink "/Users/vasu.adari/.run_commands/.zshrc";
      };

      ".config" = {
        source = config.lib.file.mkOutOfStoreSymlink "/Users/vasu.adari/.run_commands/.config";
      };

      ".tmux" = {
        source = config.lib.file.mkOutOfStoreSymlink "/Users/vasu.adari/.run_commands/.tmux";
      };

      ".tmux.conf" = {
        source = config.lib.file.mkOutOfStoreSymlink "/Users/vasu.adari/.run_commands/.tmux.conf";
      };

      ".tmux.conf.local" = {
        source = config.lib.file.mkOutOfStoreSymlink "/Users/vasu.adari/.run_commands/.tmux.conf.local";
      };

      ".hammerspoon" = {
        source = config.lib.file.mkOutOfStoreSymlink "/Users/vasu.adari/.run_commands/.hammerspoon";
      };

      # # Building this configuration will create a copy of 'dotfiles/screenrc' in
      # # the Nix store. Activating the configuration will then make '~/.screenrc' a
      # # symlink to the Nix store copy.
      # ".screenrc".source = dotfiles/screenrc;

      # # You can also set the file content immediately.
      # ".gradle/gradle.properties".text = ''
      #   org.gradle.console=verbose
      #   org.gradle.daemon.idletimeout=3600000
      # '';
    };
  };

  programs = {
    direnv = {
      enable = true;
      enableZshIntegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };

    zsh = {
      enable = true;

      sessionVariables = {
        EDITOR = "nvim";
      };
      
      shellAliases = {
        ls = "ls --color";
        vim = "nvim";
        switch = "darwin-rebuild switch --flake ~/.config/darwin";
      };
    };
  };

  programs.home-manager.enable = true;
}
