# dotfiles

This repository stores my standard Unix configuration files for easy archival and synchronization
across machines. All files are named with a "dot" prefix to avoid storing hidden files in git. The
file contents aim for perfect cross-platform compatibility (OS X / BSD and Linux / GNU).

## Setup Instructions

```bash
# Clone this repo
git clone git@github.com:jwngr/dotfiles.git

# Move to the cloned repo
cd dotfiles/

# Copy dot files
cp git/dot.gitconfig ~/.gitconfig
cp screen/dot.screenrc ~/.screenrc
cp vim/dot.vimrc ~/.vimrc
cp bash/dot.zshrc ~/.zshrc
cp bash/dot.dot.p10k.zsh ~/.p10k.zsh
# cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json

# Copy Application settings
$ cp vscode/settings.json '~/Library/Application Support/Code/User/settings.json'
```

### Application Settings

- [VS Code](vscode/README.md)
- [iTerm2](iterm2/README.md)

## Brew

- [`jq`](https://stedolan.github.io/jq/)
- [`litecli`](https://litecli.com/)
- [`sqlite`](https://www.sqlite.org/index.html)
