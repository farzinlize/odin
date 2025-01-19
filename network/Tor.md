# install tor
simply install tor with apt:
`sudo apt install tor`

- default tor proxy port is `9050`

make sure tor is available by running this code:
`systemctl status tor@default.service`
you should see this line "`Bootstrapped 100% (done): Done`" to confirm tor is connected

# Tor in Shell
- `torsocks` is a shell wrapper to route the traffic to tor from a shell command
	- e.g. `torsocks curl api.ipify.org` will show that you used tor traffic
- `source torsocks on`: will activate tor for every command in your session and you can deactivate this using `source torsocks off` 

# http proxy
tor is socks-proxy. if you want to use tor as http proxy (e.g. inside a browser) you should install `privoxy` and chain it with tor with simple configuration. open this file: `/etc/privoxy/config` and search for this line:`forward-socks5t / 127.0.0.1:9050`. this line is a comment by default and you should remove `#` from begining of the line to uncomment this.

# Bridges
if you have trouble connecting to tor (e.g. your ISP blocks tor relays) you can add your bridges. first you need to install `obfs4proxy` and then obtain some bridges through emailing `bridges@torproject.org` or [bridges.torproject.org](https://bridges.torproject.org/).

# Tor Control
you can activate a secondary port (e.g. 9051) to monitor you tor traffic using apps like `nyx`. you have to install `nyx`, it's not packaged with tor itself.

to activate a control port you need to setup a password, so no one except you use the control port. for this couse, first hash any password using this command:
`tor --hash-password "your-passphrase"` -> `16:D1C237EB...0B8A15` 
use the result as it is inside your `torrc` (located at `/etc/tor/torrc`) like this:
- `HashedControlPassword 16:D1C237EB...0B8A15` 
you should also choose a control port using this line:
- `ControlPort 9051`

keep this in mind that those lines are already written inside `torrc` file but they're there as comment so you can simply uncomment these lines and replace your hased password instead. you can also modify the default control port.

after configuring tor to enable control port, a restart is needed and then simply run `nyx` to monitor your tor traffic. `nyx` will ask for your passphrase that you used to generate the hash.