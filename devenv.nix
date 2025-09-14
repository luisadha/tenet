{ pkgs, lib, config, inputs, ... }:

{
  packages = with pkgs; [
    ucspi-tcp
  ];
  languages.javascript = {
    enable = true;
    npm.enable = true;
    bun.enable = true;
    bun.install.enable = true;
  };

  processes.server.exec = "$DEVENV_ROOT/start.sh";
  process.manager.implementation = "mprocs";

  tasks = {
    "app:build".exec = ''
      bunx tailwindcss -i $DEVENV_ROOT/static/style.css -o $DEVENV_ROOT/static/tailwind.css
    '';
  };
}
