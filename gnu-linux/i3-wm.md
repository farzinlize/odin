# config file
> located at: `~/.config/i3/config`

## `i3` message
funny enough to hear that, you can send messages to `i3` in order to *execute* any kind of commands or *subscribe* for further events occurred across `i3`, using `i3-msg`

#### Move Desktops between Monitors
in order to move a desktop (i.e. workspace) to another monitor (i.e. outputs), `i3-msg move` can be used this way:
```
i3-msg move workspace to output <direction>
```
keep in mind that your monitor placement can impact your decision for a **direction**. The bellow key-binding can toggle monitor change, in case of only using two monitor alongside together: 
```
bindsym $mod+Next exec i3-msg move workspace to output left
```
you can put right or left and it dose not really matter because you only have two monitors. 
#### Workstation names
There is some default names for different workstations in the `i3` config file which they all have a key binding to them (numbers). **Keep in mind** that the name of those workstation must start with a single digit for the binding keys to work. to change a workstation name you can use `i3-input` 
``` bash
i3-input -F 'rename workspace to "%s"' -P 'New workspace name: '
```
I also bind this command with `$mod+Shift+grave` keys (grave is the key that writes ~ but when shift is pressed). Plus that, when pressing `$mod+grave` this `rofi` enabled command will list all my workstations by name and I can choose between them to move using this command:
``` bash
i3-msg workspace $(i3-msg -t get_workspaces | jq -r '.[].name' | rofi -dmenu -p "Go to workspace")
```
## `rofi` program
This program is amazing and can be your `alt+Tab` solution to focus on a app, open ssh or even open any apps! these are list of commands that runs those solutions:
```bash
rofi -show-icons -show ssh    # shows every ssh profile to connect
rofi -show-icons -show drun   # shows applications to start
rofi -show-icons -show window # shows open windows to focus
```
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
## Keyboard 

for layout you can execute this command:
``` shell
setxkbmap -model pc105 -layout us,ir -option 'grp:alt_shift_toggle'
```
this add فارسی for your keyboard and you can change between them with **alt+shift**

how can you know what is the name of key, recognized by `i3` so you can bind some action with it? run below app and press the key to know it:
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

## Lock Screen
you can use `i3lock` to lock the screen. you may consider using `xset dpms force off` to turn off the screen after locking it.
