# bash prompt `PS1`
As my `ubuntu` dose not show the return code of each issued command I added this line to my `bashrc` file for beauty after any line that changes `PS1` variable:
``` bash
PS1="\$(VALU="\$?" ; if [ \$VALU == 0 ]; then echo 🧚; else echo 💀; fi) "$PS1
```