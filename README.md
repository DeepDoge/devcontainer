This is very early in development, and is not ready for use yet.

Anything can change, directory paths, file names, repo name, behavior, etc.

README is old

# devcontainer-use

`devcontainer-use` is a tool that helps you create and use development environments inside Docker containers. It utilizes the [devcontainer.json](https://code.visualstudio.com/docs/remote/devcontainerjson-reference) file format with [devcontainer-cli](https://github.com/devcontainers/cli) to build and run the Docker containers.

It let's you use different profiles to work inside the container, such as `nvim`.

## Usage

By default `devcontainer-use` will come with a default `nvim` profile. To use it, run the following command in your terminal:

```bash
devcontainer-use nvim
```
or
```bash
devcontainer-use nvim ./path/to/project
```

This will build and run a Docker container with a NeoVim development environment. 

The container will be stopped automatically when you exit from the container's shell unless there is no other terminals attached to the container.

### Custom Profiles

Default `nvim` profile will be inside `~/.config/devcontainer-use/profiles/nvim.json`. You can create your own profiles by creating new JSON files inside `~/.config/devcontainer-use/profiles/`.

## Default Nvim Profile

Default `nvim` profile will install `nvim`, `lazyvim` and `lazygit` inside the container.

The NeoVim configuration inside the container will be stored in a separate directory on your host machine to avoid conflicts with your local NeoVim setup. By default, the configuration will be located at:

Host:
```
~/.config/devcontainer-use/nvim/config
```

Container:
```
~/.config/nvim
```

## Installation

Requirements:
- [docker](https://docs.docker.com/get-docker/)
- [jq](https://stedolan.github.io/jq/download/)
- [devcontainer-cli](https://github.com/devcontainers/cli)

To install `devcontainer-use`, run the following commands in your terminal:

```bash
git clone https://github.com/DeepDoge/devcontainer-use.git /tmp/devcontainer-use && \
mv /tmp/devcontainer-use/devcontainer-use ~/.local/bin && \
chmod +x ~/.local/bin/devcontainer-use && \
rm -rf /tmp/devcontainer-use
```

## Uninstallation

To uninstall `devcontainer-use`, run the following command in your terminal:

```bash
rm ~/.local/bin/devcontainer-use
rm -rf ~/.config/devcontainer-use
```

## Contribution

Contributions to `devcontainer-use` are welcome! If you encounter any issues or have suggestions for improvements, feel free to submit an issue or a pull request on the [GitHub repository](https://github.com/DeepDoge/devcontainer-use).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Happy coding with `devcontainer-use`! 🚀

*- Writen by ChatGPT*
