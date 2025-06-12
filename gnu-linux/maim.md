# Make Image with `maim`

Useful commands are listed:

- make screenshot of everything (including multiple monitors) and save it in file
``` bash
maim ~/Screenshots/$(date "+%Y%m%d_%H%M%S").png
```

- make selection screenshot in file (drag a rectangle to shot image)
``` shell
maim -s ~/Screenshots/$(date "+%Y%m%d_%H%M%S").png
```

You can bypass the file name and directly pipe `maim` output (screenshot) to `xclip` (clipboard) where you can paste you image anywhere. here is an example:
``` shell
maim | xclip -selection clipboard -t image/png
```

# `i3` config key binding
Use this `i3` config file:
``` config
bindsym Print exec --no-startup-id maim ~/Screenshots/$(date "+%Y%m%d_%H%M%S").png

bindsym Shift+Print exec --no-startup-id maim -s ~/Screenshots/$(date "+%Y%m%d_%H%M%S").png

bindsym Mod4+Print exec --no-startup-id "maim | xclip -selection clipboard -t image/png"

bindsym Mod4+Shift+Print exec --no-startup-id "maim -s | xclip -selection clipboard -t image/png"
```

