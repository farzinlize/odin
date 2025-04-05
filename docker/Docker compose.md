for any service, you should add an entry inside `services`. 

this is a list of possible attributes of a service:
- environment: to define `env` variables
- ports: port mapping -> `<mapped-port-on-host>:<port-on-container>`
	- a **range of ports** can be used for port mapping like `<range-of-ports>:<port>`. this can be used with `deploy:replicate` option to let docker choose between a range of ports on host when deploying multiple replicated services.

YAML compose file should have `name` entry on root level. this name will be used as prefix for every service domain name (in DNS) like `<name>-<service-name>`. keep in mind that a dash character  `-` will be used to separate the prefix 