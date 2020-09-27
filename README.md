# Dotfiles for days

nix:
----------------

- needed to link dotfiles,
- [gnome colors solarized](https://github.com/Anthony25/gnome-terminal-colors-solarized)
- [hide application top bar](https://github.com/franglais125/no-title-bar)
- [hide application menu bar](https://github.com/deadalnix/pixel-saver)
- [hide system top bar](https://github.com/mlutfy/hidetopbar)
- term > pref > uncheck menubar in new windows
- term > profiles > edit > scrolling > uncheck show scrollbar
- [tweak > keyboard & mouse > click method > fingers](https://medium.com/@tiagopotencia/disabling-right-click-zone-on-touchpad-on-gnome-6437a729acb)
- `xset r rate 250 60`

TODO
----

- better support for contexts, more than just gitconf
- make makefile smarter?
- make fish prompt better
- right now relying on installed binaries, should I source control:
  - eslint_d, prettier, etc?

core technologies
--------------------------
  nvim
  tmux
  git
  lsc

things to improve:
  plugin usage
  snippets
  linting / prettier /zig fmt, etc

boot up expectation checking of installed binaries
  js:
    prettier
    eslint_d
  zig:
    zig

move vim conf all to neovim
