# devcontainer

This is a third-part tool that let's you build and run Docker containers based on [devcontainer.json](https://code.visualstudio.com/docs/devcontainers/containers#_create-a-devcontainerjson-file) file in your project. 

- After building and running the container, it will mount directory of your project into the container.
- It will also mount directory paths associated with `neovim` configs, cache, plugins and etc from container to your host machine in a way that will not conflict with the `neovim` on your host machine, if you have `neovim` installed on it. This way `neovim` inside the container will be isolated from the `neovim` on your host machine but also it will be persistent and will be common between different containers that you will run for different projects.
- Then it will run `neovim` inside the container and will attach to it from your host machine.

This will allow you to have an experience similar to [VSCode Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) but with `neovim` instead of VSCode.

Later I will add support for other editors like `emacs`, `vim` and many others.

## Usage

```bash
devcontainer nvim ./path/to/project
```

## Where is my `neovim` config?

It will be located in `~/.config/@deepdoge/devcontainer/nvim/config` on your host machine.

The file tree of `~/.config/@deepdoge/devcontainer/nvim` will look like this on your host machine:

```
~/.config/@deepdoge/devcontainer/nvim
├── cache
├── config
├── local
│   └── share
```

So basically all of your `neovim` related directories will be located in `~/.config/@deepdoge/devcontainer/nvim` on your host machine.<br/>
And will be mounted into the containers as `~/.config/nvim`, `~/.cache/nvim` and `~/.local/share/nvim` respectively.
