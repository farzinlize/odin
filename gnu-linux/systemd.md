# What is `systemctl`

> `systemctl` is a command-line tool that allows for the management and monitoring of the `systemd` system and service manager in Linux. 

It provides a range of commands to :
- start
- stop
- restart
- check the status
of services, making it essential for system administration tasks such as ensuring services run smoothly and start automatically at boot if set up that way.

# `journalctl`
checking logs from services with `journalctl`
- `-f` flag to follow log messages in live
- `-u` flag to determine the unit (i.e. service)

> example of checking live logs: `journalctl -fu service` 
> it's like "*fuck you service*" but it's "*follow unit*"