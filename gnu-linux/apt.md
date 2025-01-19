## apt-mark
if you want to hold back some package from getting upgrade you can use:
`apt-mark hold <package-name>`
this command needs `sudo` and it prevents the `<package-name>` to get any upgrade with newer versions. 

to cancel this you can use this line:
`apt-mark unhold <package-name>`