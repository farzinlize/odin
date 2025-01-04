executable files (scripts) starts with:
`#!/bin/bash`

Arguments are `$<digit>` 
- $0 -> executed command (e.g. `./script.sh` or `/path/to/script.sh`)
- $1 -> first argument and so on until $9 the 9th argument

-> the `&&` operator is used to chain commands together in a way that the second command only executes if the first command succeeds.