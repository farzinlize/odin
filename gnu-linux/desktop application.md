# desktop files
you can make a desktop application that you linux OS recognize by a `.desktop` file. here is an example of such files:
``` toml
[Desktop Entry]
Version=0.99
Name=<application-name>
Comment=<application-description>
Exec="command needed for this application to run"
Icon=<icon-image-full-address>
Terminal=false
Type=Application
Categories=Application
```

## gnome vs i3
in gnome, you can place those `.desktop` files in `~/Desktop` to make icons in gnome desktop. but in i3 you can place those files at `~/.local/share/applications` so `i3-dmenu-desktop` can see them

# X server

X is responsible of your GUI bro. 
# `xprop` to the rescue!
`xprop` will show you every information you may need about an x window (gnome or i3) simply run the `xprop` and click on any window you wanna know about it. 