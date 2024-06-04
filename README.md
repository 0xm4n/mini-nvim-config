# Minimal Neovim Configuration for C

This README will guide you through the installation of Neovim and the setup of the necessary dependencies.

## Installation

### Step 1: Download Neovim

First, download the Neovim AppImage:

```bash
wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim.appimage
```

### Step 2: Make the AppImage Executable

Make the downloaded AppImage executable:

```bash
sudo chmod u+x nvim.appimage
```
### Step 3: Install FUSE

Neovim requires FUSE to run the AppImage. Follow the instructions below based on your Ubuntu version.

#### Ubuntu (>= 22.04):

```bash
sudo add-apt-repository universe
sudo apt install libfuse2
```

#### Ubuntu (<= 21.10):

```bash
sudo apt install fuse libfuse2
sudo modprobe fuse
sudo groupadd fuse
user="$(whoami)"
sudo usermod -a -G fuse $user
```

### Step 4: Move and Rename Neovim

Rename the AppImage and move it to a directory in your PATH:

```bash
mv nvim.appimage nvim
sudo mv nvim /usr/bin/
```

### Step 5: Create Configuration Directory

Create the configuration directory for Neovim:

```bash
mkdir ~/.config/nvim
```

## Dependencies

To ensure all features work correctly, install the following dependencies:

```bash
sudo apt install cmake make build-essential ripgrep fd-find fzf tar curl unzip
```

## Getting Started

Clone this repository and place these configuration files in the `~/.config/nvim` directory.

```bash
git clone https://github.com/0xm4n/mini-nvim-config.git ~/.config/nvim
```


## Usage

Start Neovim with the following command:

```bash
nvim
```

Enjoy your Neovim setup!

---

## Project Setup (Install bear)

In C development, the Language Server Protocol (LSP) needs detailed compilation information to provide accurate code analysis such as code completion, navigation, and diagnostics. . This information is provided in a compile_commands.json file, which includes the necessary compiler flags and include paths.

bear is a tool that simplifies this process by generating the compile_commands.json file automatically during the build process. By using bear, you ensure that the LSP has all the necessary information to analyze your code correctly, enhancing your development experience.



Install bear:

```bash
sudo apt install bear
```

### How to Use bear

bear needs a clean build to generate the compilation database file:

```bash
bear <your-build-command>
```

Example:

```bash
bear make image.out -j12
```

## Basic Neovim Usage

This section explains the basic key mappings used in this Neovim configuration. These mappings are set up to enhance productivity by providing quick access to various functionalities.

`<leader>` is space key.

### Telescope Key Mappings

- **Find Files**: Press `<leader>ff` to open Telescope and search for files in your project.

- **Live Grep**: Press `<leader>fg` to perform a live grep search across your project.

- **Grep String**: Press `,fg` to search for the string under the cursor.

- **Buffers**: Press `<leader>fb` to list and switch between open buffers.

- **Old Files**: Press `<leader>fp` to find recently opened files.

- **Resume**: Press `<leader>fr` to resume the last Telescope search.

- **Git Status**: Press `<leader>fs` to show the current Git status.



### LSP Key Mappings
- **Symbol References**: Press `gr` to find all references to the symbol under the cursor.

- **Go to Declaration**: Press `gD` to go to the declaration of the symbol under the cursor.

- **Go to Definition**: Press `gd` to go to the definition of the symbol under the cursor.

- **Rename Symbol**: Press `<leader>rn` to rename the symbol under the cursor.


- **Code Actio**n: Press `<leader>ca` to view and select code actions for the current line or selection.
