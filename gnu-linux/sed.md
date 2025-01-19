`sed` (short for Stream Editor) is a powerful command-line utility in Linux used for parsing and transforming text. It is particularly useful for tasks involving text substitution, deletion, and insertion in files or input streams. Below, I'll explain the basic syntax, common options, and various use cases for `sed`.

### Basic Syntax

The basic syntax of the `sed` command is:

```bash
sed [options] 'script' [input_file]
```

- **options**: Flags that modify the behavior of `sed`.
- **script**: The command(s) to be executed (usually enclosed in single quotes).
- **input_file**: The file to be processed. If no file is specified, `sed` reads from standard input.

### Common Options

- `-n`: Suppress automatic printing of pattern space. Useful when you only want to print specific lines.
- `-e`: Allows you to specify multiple `sed` commands.
- `-i`: Edits files in place (modifies the original file).
- `-f`: Allows you to specify a file containing `sed` commands.

### Common Use Cases

1. **Substituting Text**

   To replace a string in a file:

   ```bash
   sed 's/original/replacement/g' filename.txt
   ```

   - `s`: Stands for substitution.
   - `g`: Global flag (replace all occurrences in each line).

2. **In-place Editing**

   To modify a file directly:

   ```bash
   sed -i 's/original/replacement/g' filename.txt
   ```

3. **Printing Specific Lines**

   To print only lines that match a specific pattern:

   ```bash
   sed -n '/pattern/p' filename.txt
   ```

   - `p`: Print the lines that match the pattern.

4. **Deleting Lines**

   To delete lines that match a pattern:

   ```bash
   sed '/pattern/d' filename.txt
   ```

   - `d`: Delete the lines that match the pattern.

5. **Inserting and Appending Text**

   To insert a line before a matched pattern:

   ```bash
   sed '/pattern/i New line of text' filename.txt
   ```

   To append a line after a matched pattern:

   ```bash
   sed '/pattern/a New line of text' filename.txt
   ```

6. **Changing Lines**

   To change a line that matches a pattern:

   ```bash
   sed '/pattern/c New line of text' filename.txt
   ```

7. **Using Regular Expressions**

   `sed` supports regular expressions for more complex matching:

   ```bash
   sed -E 's/[0-9]+/number/g' filename.txt
   ```

   - `-E`: Enables extended regular expressions.

8. **Using `sed` with Pipes**

   You can use `sed` with other commands using pipes:

   ```bash
   echo "Hello World" | sed 's/World/Sed/'
   ```

### Examples

1. **Changing File Extensions**

   Change all `.txt` extensions to `.bak`:

   ```bash
   sed -i 's/\.txt$/\.bak/' *.txt
   ```

2. **Removing Empty Lines**

   Delete all empty lines from a file:

   ```bash
   sed '/^$/d' filename.txt
   ```

3. **Replacing Tabs with Spaces**

   Replace all tabs with four spaces:

   ```bash
   sed 's/\t/    /g' filename.txt
   ```

### Conclusion

`sed` is a versatile tool for text processing in Linux. It can handle a wide variety of tasks, from simple substitutions to complex text manipulations. To become proficient, practice using different commands and options on sample files, and gradually incorporate `sed` into your everyday command-line workflows.