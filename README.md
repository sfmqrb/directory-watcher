
# Directory Watcher

A Bash script that monitors a directory for changes and executes a command when changes are detected.


## Installation

1. Clone the repository:

```bash
$ git clone https://github.com/sfmqrb/directory-watcher.git
$ cd directory-watcher
```

2. Run the `install.sh` script to install the `poll_exec` script:

```bash
$ bash install.sh
```
This will copy the `poll_exec` script to `$HOME/.local/bin` directory, which should be in your `PATH`.

3. You can now use the `poll_exec` script from anywhere in the terminal.

## Usage

$ poll_exec [options]


Options:

- `-d, --directory <directory>`: Directory to watch (default: current directory)
- `-c, --command <command>`: Command to execute when changes are detected (required)
- `--help`: Show help message and exit

## Examples

Watch the current directory and run `make` command on any change:

```bash
$ poll_exec -c make
```


Watch a specific directory and run `python script.py` command on any change:

```bash
$ poll_exec -d /path/to/directory -c "python script.py"
```

## License

This script is licensed under the [MIT License](https://opensource.org/license/mit/).

---
