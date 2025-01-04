Here many tools are described in short 
## convert
install via: `apt install imagemagick`
`convert filename.pdf[start-end] ... result.pdf`
*one can add multiple filen to concat different files or different pieces of the same file*
## lsof
list of open files
options:
- -i for internet
- -P for port numbers instead of port names
- -n for ip addresses instead of host names
## wget
use proxy when using wget:
`wget -e use_proxy=true -e http_proxy=<proxy_server> <link>`
## systemd-resolved
process listening on 127.0.0.53:53 tcp and udp
resolve domain names with cache.
* command : `resolvectl status`
	Shows the global and per-link DNS settings currently in effect. If no command is specified, this is the implied default. (plus DNS servers in use)
## find
locate specific file name: `find path/to/search -name <the-name>`
searching for directory: `-type d` 
	`d` means directory, `f` for file, etc.