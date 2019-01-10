# ThemeZone
My dotfiles and an installer

## Usage
Edit the installer.sh and ensure that you are using the correct config directory. I can't think of any distro where it wouldn't be .config but hey.

Run:

```shell
./install.sh
```

## Exactly copying my environment like a cheeky bugger

If you want to copy exactly what I'm using, for whatever reason, then you'll probably need:

i3-gaps
polybar
rofi

Install those on Debian-based systems with the custom compilers on their respective GitHub repositories, or on real distros with `pacman`. Most of the stuff in these directories is stuff I've hacked together from various places, or cheaply tried to emulate from r/unixporn. Don't judge me.

## Editing
If you want to make changes, ensure that any directories you add get added to the array up top.
