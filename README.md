
# Directory Watcher

A Bash script that monitors a directory for changes and executes a command when changes are detected.

## Usage

$ poll_exec [options]


Options:

- `-d, --directory <directory>`: Directory to watch (default: current directory)
- `-c, --command <command>`: Command to execute when changes are detected (required)
- `--help`: Show help message and exit

## Examples

Watch the current directory and run `make` command on any change:

$ ./poll_exec.sh -c make


Watch a specific directory and run `python script.py` command on any change:

$ poll_exec -d /path/to/directory -c "python script.py"


## License

This script is licensed under the [MIT License](LICENSE).

---
