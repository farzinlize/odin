### calculate average 
process a `<file>` containing numbers to report their average using `awk`:
``` bash
awk '{sum += $1} END {print sum/NR}' <file>
```