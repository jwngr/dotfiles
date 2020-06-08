# dotfiles

This repository stores my standard Unix configuration files for easy archival and synchronization
across machines. All files are named with a "dot" prefix to avoid storing hidden files in git. The
file contents aim for perfect cross-platform compatibility (OS X / BSD and Linux / GNU).

## Setup Instructions

1. Clone this repo:

   ```zsh
   $ git clone git@github.com:jwngr/dotfiles.git
   $ cd dotfiles
   ```

1. Copy dot files:

   ```zsh
   $ cp git/dot.gitconfig ~/.gitconfig
   $ cp screen/dot.screenrc ~/.screenrc
   $ cp vim/dot.vimrc ~/.vimrc
   $ cp zsh/dot.zshrc ~/.zshrc
   $ cp zsh/dot.p10k.zsh ~/.p10k.zsh
   $ cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json
   ```

1. Copy application settings:

   ```zsh
   $ cp vscode/settings.vscode.json ~/Library/Application\ Support/Code/User/settings.json
   $ cp vscode/global.code-snippets ~/Library/Application\ Support/Code/User/snippets/
   ```

1. Install [`brew`](https://brew.sh/).

1. Install the following packages via `brew`:

   ```zsh
   $ brew install jq  # https://stedolan.github.io/jq/
   $ brew install litecli  # https://litecli.com/
   $ brew install sqlite  # https://www.sqlite.org/index.html
   ```

1. Do some manual setup for the following applications:
   - [iTerm2](iterm2/README.md)
   - [Visual Studio Code](vscode/README.md)
   - [zsh](iterm2/README.md)
