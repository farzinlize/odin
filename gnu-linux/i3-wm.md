# config file
> located at: `~/.config/i3/config`

## i3 message
funny enough to hear that, you can send messages to i3 in order to *execute* any kind of commands or *subscribe* for further events occurred across i3, using `i3-msg`

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
I asked [ChatGPT](https://chatgpt.com/share/685d006c-6f1c-800b-8ab6-0408e28031f6) about my issue with the touch pad on my laptop and the only thing i had to do was    