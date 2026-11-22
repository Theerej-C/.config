# Arch Linux desktop configuration

This repository contains the active Hyprland, Waybar, and Neovim configs:

- `hypr/hyprland.lua`
- `waybar/config.jsonc`
- `waybar/style.css`
- `nvim/init.vim`

There is no i3 or standalone Vim configuration here.

## Prerequisites

Install the desktop applications, command-line tools, fonts, and language
server used by these configs:

```sh
sudo pacman -S --needed hyprland waybar neovim git nodejs clang ripgrep fzf \
  wl-clipboard kitty thunar hyprlauncher wireplumber brightnessctl \
  playerctl pavucontrol ttf-jetbrains-mono
```

Install **vim-plug** separately (for example, from the Arch AUR or its upstream
installation instructions). Neovim uses it to install the plugins declared in
`nvim/init.vim`.

The Neovim config uses CoC for completion and language features. Open Neovim
and run `:PlugInstall`, then restart Neovim. For C/C++ support, install the
CoC extension with `:CocInstall coc-clangd`. The `clang` package above
provides `clangd`.
`ripgrep` is used by Telescope's live-grep search, and `wl-clipboard` enables
the system clipboard in Wayland.

Hyprland starts Waybar and uses Kitty, Thunar, and Hyprlauncher for its
configured keybindings. The audio mixer click action needs `pavucontrol`;
media and brightness keybindings use `playerctl` and `brightnessctl`.

## Applying the configs

Place each directory in this repository under `~/.config` so the paths match
the list above. Back up any existing files before replacing them. Restart or
reload Hyprland after applying its config; restart Waybar to load its config
and stylesheet.
