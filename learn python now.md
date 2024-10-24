educational contents including scripts, video record or edits are available for free so let's start to learn python with ME. You can trust ME, ME is just like you a person with some good stuff to share. 
# Learn Python with ME
jump into craziness of ME and it's imaginations, open a duck serious map on your computer only using python! trust ME! it is easy and only takes a few lines of code to prove it but at first you need a python executable, which is an interpreter, and access to various packages through `pip` program. 
# one-session class
you only need one session to learn anything you need to execute your first program, take care. First you need a python executable. Let python do the dirty work, install it via wizard installation. Next you need access to a terminal where you can execute commands. 
## Terminal 
Don't worry if you are on Linux you only need to press `ctrl + alt + T`. You may find a terminal with other names like 
command prompt or powershell on windows. 

> **Terminal** is your **portal** through your **computer or device** and you only have to put some **magic words** in and it will respond to you as you **command**.

At this point you need a path or directory to put your program in it. simply make a directory anywhere you like on your computer and remember its path. On Linux paths are like this: `/somewhere/here/myapp` or on Windows paths are like this: `C:\somewhere\here\myapp`. To execute anything from your directory you need to open a terminal at that location or simply to change directory into your path. The command you need is `cd` short for `change directory`, write it in any terminal and then enter your path after it like: `cd /mylocation/myapp`
## Safe environment for your app
At the end you only need one more thing. A virtual environment where your program can feel safe. Don't worry it's just python's work. you only need to run a python `(-m)`module named `venv` like this: `python -m venv <name>`. You can put whatever name you want on the virtual environment you just created and activate it by this command: `source <name>/bin/activate` 
Also you can `deactivate` it by simply writing it as another command.
## End of the session or ...
Its OK if you feel uncomfortable when you are new to these concepts such as a terminal or virtual environments. The best practice for it is to understand what are they exactly. ME covered this topic in **one-session class** for you to learn more about executing commands in terminal and virtual environments. 
# python packages
one of python strengths is packaging. There are many useful packages for python written for you already! isn't that amazing? let's play with something. How you like maps? let's explore a great python package `osmnx` to plot maps with a single line of code after importing from package. like this: 
```
>>> import osmnx as ox
>>> ox.plot_graph(ox.graph_from_place("address"))
>>> #----> you can put mostly whatever addresses you want, I tried my own neighborhood and found my house.
```
But wait, first you must download and install the package. You need to execute a python module, named `pip`, from a terminal. It's better to check for latest version of module using this command: `pip install --upgrade pip`. Anyway you can install a package like `osmnx` with this command: `pip install osmnx` 

> `pip` is also a separated executable alongside python executable and it was installed when you installed python. You can let python decide where to look for pip executable by executing pip `(-m)`module like this: `python -m pip help`

After you install any package, you can verify it by importing the package inside python, using `import` keyword like this:
```
>>> import osmnx
```
If only the package is successfully installed, the next line prompt (`>>>`) will be displayed without any error. Some modules or packages are heavy to load so take your time if you face a freezing moment and let python do its job. 


