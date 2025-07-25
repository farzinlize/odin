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

# Touch Pad
I asked [ChatGPT](https://chatgpt.com/share/685d006c-6f1c-800b-8ab6-0408e28031f6) about my issue with the touch pad on my laptop and the only thing i had to do was:

1. executing `xinput list` to find my touch pad `<id>` 
2. `xinput set-prop <id> "libinput Tapping Enabled" 1`
here is my example with `xinput list` on m Asus laptop 
``` 
⎡ Virtual core pointer                    	    id=2	[master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer              	id=4	[slave  pointer  (2)]
⎜   ↳ ETPS/2 Elantech Touchpad                 <id=13>	[slave  pointer  (2)]
⎣ Virtual core keyboard                   	    id=3	[master keyboard (2)]
    ↳ Virtual core XTEST keyboard             	id=5	[slave  keyboard (3)]
    ↳ Power Button                            	id=6	[slave  keyboard (3)]
    ↳ Asus Wireless Radio Control             	id=7	[slave  keyboard (3)]
    ↳ Video Bus                               	id=8	[slave  keyboard (3)]
    ↳ Video Bus                               	id=9	[slave  keyboard (3)]
    ↳ Sleep Button                            	id=10	[slave  keyboard (3)]
    ↳ Asus WMI hotkeys                        	id=11	[slave  keyboard (3)]
    ↳ AT Translated Set 2 keyboard            	id=12	[slave  keyboard (3)]
```

