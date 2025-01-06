executable files (scripts) starts with:
`#!/bin/bash`

### Arguments are `$<digit>` 
- $0 -> executed command (e.g. `./script.sh` or `/path/to/script.sh`)
- $1 -> first argument and so on until $9 the 9th argument

### Logical AND `&&`, OR `||`
-> the `&&` operator is used to chain commands together in a way that the second command only executes if the first command succeeds.
-> the `||` is the opposite, it only execute the second command only if the first command fails.
-> these operators can be used together to form an if-else situation. For example, the line below uses `[]` or `test` to evaluate the `condition` and then execute `true-command` if the condition succeeded, or it only execute `false-command` if the `condition` failed.
	`[ condition ] && true-command || false-command`
