
- `-r` flag for raw output instead of json

## Filter
`jq [flags] '<filter>' input`
- `.[]` means to open one level
- `.<key>` means to open `<key>` 
- `select(<condition>)` this selects items when condition is met