Install and Run Python Applications in Isolated Environments
https://github.com/pypa/pipx

> instead of installing system-wide python package to use it as application, you can install it via **`pipx`**

- install a package: 
	- `pipx install memory_profiler`
- inject dependency if needed using `inject` command of `pipx`:
	- `pipx inject mempry_profiler matplotlib`
