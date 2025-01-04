command (if host exist in config file) -> `ssh host`
otherwise -> `ssh user@host`
use `-o` for options like `HostKeyAlgorithms` or `IdentityFile`

example -> `ssh me@hpc -o HostKeyAlgorithms=+ssh-rsa`

## config file
address: ~/.ssh/config
```
HOST [NAME] 
	User [USER]
	HostName [DOMAIN or IP address]
	IdentityFile [private-key]
	HostKeyAlgorithm=[key,...]
	Port [custom-port]
	RequestTTY [yes or no]
```
- `HostKeyAlgorithms` are like ssh-rsa, ssh-dss or ed25519. 
- `RequestTTY no`: optional for any host that serves git. These hosts usually dose not provide PTY, so if you attempt to establish any ssh connection, it will generate a warning that says: *no PTY allocation request failed on channel 0*. you can solve this warning with not requesting the PTY same as `ssh -T` flag for ssh command

## keygen
Command: `ssh-keygen -t ed25519 -C "any@mail.com"`
- generating key using this command will ask you for a location 
	(e.g. `/home/you/.ssh/my.access`) 
- you can also lock this key with a passphrase but entering nothing is also possible
- `-t` option tells the key type (e.g. ed25519 or rsa) and `-C` option to assign your email to this key
