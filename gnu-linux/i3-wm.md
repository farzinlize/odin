# config file
> located at: `~/.config/i3/config`

## `for_window`
*for any window that some condition is met do something*

I used it to specify a class that should be run floating mode:
``` config-i3
for_window [class="my-floating-window"] floating enable
```
For example, when running `gnome-terminal` with `--class="my-floating-window"` flag, the window will be in floating mode:
``` shell
gnome-terminal --class="my-floating-window"
```
you can find more about *x class* in
# Keyboard 

for layout you can execute this command:
``` shell
setxkbmap -model pc105 -layout us,ir -option 'grp:alt_shift_toggle'
```
this add فارسی for your keyboard and you can change between them with **alt+shift**

how can you know what is the name of key, recognized by i3 so you can bind some action with it? run below app and press the key to know it:
``` bash
xbindkeys --keys
```