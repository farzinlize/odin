## SDP structure
these short names are used for specifying parameterns and etc.
- o: owner
- s: session name
- c: content 
- m: media
- b: bandwidth
- a: attribute
	- rtpmap:`<dynamic-codec-id> <codec>` 
		- `<dynamic-codec-id>` is specified in *m(edia)* 
	- fmtp: `<payload-type> <format-parameters>`
		- `<payload-type>` is like `<dynamic-codec-id>` from media(m=)
	- ptime: packet time
		- The `ptime` attribute indicates the duration (in milliseconds) of a media packet. It essentially defines how much audio or video data is contained in each packet sent over the network.
	- maxptime: Maximum packet time
	- inactive: means media is inactive (e.g. while sending invite message)
	- `curr:qos` means current quality of service
	- `des:qos` means desired media characteristics

## more explaination of each part

- owner
format -> `o=<username> <session_id> <session_version> <nettype> <addrtype> <address>`
example -> `o=alice 2890844526 2890844526 IN IP4 192.0.2.1
hints ->`IN` specifies that the network type is the Internet and the same session version as session id indicates it has not changed

- a=ftmp
Some common `fmtp` attributes include: 
- `channels`: specifies the number of audio channels (e.g., mono, stereo, etc.)
- `crc`: specifies whether cyclic redundancy check (CRC) is enabled or disabled
- `interleaving`: specifies the interleaving scheme used for packetization
- `max-red`: specifies the maximum number of redundant packets allowed
- `maxtime`: specifies the maximum time interval between packets
- `mode-change-capability`: specifies the capability to change modes (e.g., from mono to stereo)
- `mode-change-neighbor`: specifies the neighbor mode change capability
- `mode-change-period`: specifies the period for mode changes
- `mode-set`: specifies the set of allowed modes
- `octet-align`: specifies whether octet alignment is enabled or disabled
- `ptime`: specifies the packet time interval
- `robust-sorting`: specifies whether robust sorting is enabled or disabled
explain: `a=fmtp:101 0-15`
This specifies that the endpoint supports the payload type 101 (e.g., telephone-event) and allows for 0-15 events to be sent.

