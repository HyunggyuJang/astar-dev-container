# Astar WASM/EVM integrated dev container

## Intro

Dev container is a Visual Studio Code extension that allows for sharing a full dev environment.

This means you can develop your project inside a preconfigured container with all prerequisites met and correct dependencies installed. 

This includes WASM smart contract development tools: 

- Rust compiler
- `cargo contract`
- `swanky-cli`

along with EVM smart contract development tools:

- Hardhat
- Foundry
- Mocha test explorer

## Prerequisites

To run the container, you will need:

- Visual Studio Code with the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) enabled
- Docker engine installed and the daemon running

More detailed information on system requirements can be [found here](https://code.visualstudio.com/docs/devcontainers/containers#_system-requirements).

## Usage

- fork or clone this repo (optionally rename the target dir), and open it in VS Code

There should be a popup in the lower-right offering you to open the container. Click "Reopen in Container".

<p align="center">
<img src="https://github.com/AstarNetwork/swanky-dev-container/blob/main/images/popup.png" width=300/>
</p>

You can also click on the green button on the lower-left to open the dev container commands menu, and select "Reopen in container" from there.

<p align="center">
<img src="https://github.com/AstarNetwork/swanky-dev-container/blob/main/images/button.png" width=300/>
</p>
<p align="center">
<img src="https://github.com/AstarNetwork/swanky-dev-container/blob/main/images/menu.png" width=300/>
</p>

First run will take a while as it needs to build the container and install all the packages and dependencies.

### Host shared folder

As a part of the installation process, a folder named `astar` will be created in your `HOME`.

It is mounted to `/host-home` in the container, and you can use it to share files with the host OS, for example, compiled contracts for uploading and instantiating on the contracts UI.

### Terminal

To interact with your project (including calling `swanky` commands), use VS Code integrated terminal.

## Updating swanky version

Swanky is installed using `npm`.

To update the Swanky version you can use the following steps:

```bash
npm update -g @astar-network/swanky-cli
```

## Configure and modify the container

### Adding apt packages

This dev container uses `apt-packages` feature. You can add the packages you need to the `packages` fields, and they will be installed during the container build.

Note that you will have to rebuild for changes to take place.

### Git credentials

Only `user.name` and `user.email` are copied from the host system because those are needed for swanky-cli to operate correctly. Anything else needs to be added manually.

### Adding vscode extensions

Any VS code extensions you need to run during the development in the container need to be specified in the `devcontainer.json` file.

To add the extensions you want, copy the identifier found in the extension details page into the `customizations.vscode.extensions` array in `devcontainer.json`

### Add features

Features are "modules" that can be added to the dev container to install additional software or extend the functionality.

Officially supported and community maintained features can be [found here](https://containers.dev/features), but you can also build your own.

To add a feature, simply copy it's reference into the `features` field.

> Note: not all features are compatible, and some need to be installed in a specific order. Check the readme before adding any.

## References

- [Dev containers manual](https://code.visualstudio.com/docs/devcontainers/containers)
- [Dev container specification](https://containers.dev/)
- [swanky-cli](https://github.com/AstarNetwork/swanky-cli)
- [Hardhat](https://hardhat.org/)
- [Foundry](https://book.getfoundry.sh/)
- [Mocha](https://mochajs.org/)
