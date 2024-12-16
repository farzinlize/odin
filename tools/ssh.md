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
```
HostKeyAlgorithms are like ssh-rsa, ssh-dss or ed25519. 