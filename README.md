This is very early in development, and is not ready for use yet.

Anything can change, directory paths, file names, repo name, behavior, etc.

README is old

# devcontainer-use

`devcontainer-use` is a tool that allows you to build and run Docker containers with a NeoVim development environment based on a `devcontainer.json` file in your project. It provides an isolated NeoVim environment that can be shared between different projects, similar to the experience of [VSCode Dev Containers](https://code.visualstudio.com/docs/remote/containers).

## Note

Not all `devcontainer.json` configurations are supported yet. The following configurations are supported:
- `image`
- `build.dockerfile`
- `postCreateCommand`
- `postStartCommand`
- `postAttachCommand`

## Features

- Build and run Docker containers with NeoVim development environments.
- Mount your project directory into the container for seamless development.
- Mount NeoVim configuration, cache, and plugins from the container to your host machine, ensuring isolation from your local NeoVim installation.
- Easy setup and configuration through the `devcontainer.json` file.

## Installation

Requirements:
- [docker](https://docs.docker.com/get-docker/)
- [jq](https://stedolan.github.io/jq/download/)

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

## Usage

To create and run a NeoVim development container for your project, follow these steps:

1. Ensure that you have a `devcontainer.json` file in your project root. The file should define the necessary configurations for your NeoVim development environment. Refer to the [VSCode Dev Containers documentation](https://code.visualstudio.com/docs/remote/containers) for guidance on creating the `devcontainer.json` file.

2. Open a terminal and navigate to your project directory.

3. Run the `devcontainer-use` command:

   ```bash
   devcontainer-use
   ```

   The script will detect the presence of `devcontainer.json` in your project and proceed with the container setup.

4. The script will build or pull the Docker image based on the `devcontainer.json` configuration. If a custom Dockerfile is specified, the image will be built accordingly. Otherwise, it will use the image specified in the `devcontainer.json` file.

5. Once the container is up and running, NeoVim will be available inside the container. The project directory will be mounted into the container, and NeoVim configurations, cache, and plugins will be mounted from the container to your host machine.

6. Enjoy a seamless development experience with NeoVim inside the container!

## NeoVim Configuration

The NeoVim configuration inside the container will be stored in a separate directory on your host machine to avoid conflicts with your local NeoVim setup. By default, the configuration will be located at:

Host:
```
~/.config/devcontainer-use/nvim/config
```

Container:
```
~/.config/nvim
```


## Customizing the Docker Image

You can customize the Docker image used by editing the `devcontainer.json` file in your project. Specify the Dockerfile to use or define the image directly. For more information on configuring dev containers, refer to the [VSCode Dev Containers documentation](https://code.visualstudio.com/docs/remote/containers).

## Contribution

Contributions to `devcontainer-use` are welcome! If you encounter any issues or have suggestions for improvements, feel free to submit an issue or a pull request on the [GitHub repository](https://github.com/DeepDoge/devcontainer-use).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Happy coding with `devcontainer-use`! 🚀

*- Writen by ChatGPT*
