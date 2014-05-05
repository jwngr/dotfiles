dotfiles
========

This repository stores my standard Unix configuration files for easy
archival and synchronization across machines.  All files are named
with a "dot" prefix to avoid storing hidden files in git.  The file
contents aim for perfect cross-platform compability (OS X / BSD and Linux / GNU).

## Mac OS X

Clone this repository to ${HOME}/git/dotfiles

```bash
REPOHOME="${HOME}/git/dotfiles"
cd ~

ln -s "${REPOHOME}/git/dot.gitconfig" ".gitconfig"
ln -s "${REPOHOME}/git/dot.global-gitignore" ".global-gitignore"
ln -s "${REPOHOME}/screen/dot.screenrc" ".screenrc"
ln -s "${REPOHOME}/vim/dot.vimrc" ".vimrc"
ln -s "${REPOHOME}/bash/dot.bashrc" ".bash_profile"
ln -s "${REPOHOME}/sublime/Preferences.sublime-settings" "./Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -s "${REPOHOME}/osx/Library/KeyBindings/DefaultKeyBinding.dict" "./Library/KeyBindings/DefaultKeyBinding.dict"
```

## Ubuntu

Clone this repository to ${HOME}/git/dotfiles

```bash
REPOHOME="${HOME}/git/dotfiles"
cd ~

ln -s "${REPOHOME}/git/dot.gitconfig" ".gitconfig"
ln -s "${REPOHOME}/git/dot.global-gitignore" ".global-gitignore"
ln -s "${REPOHOME}/screen/dot.screenrc" ".screenrc"
ln -s "${REPOHOME}/vim/dot.vimrc" ".vimrc"
ln -s "${REPOHOME}/bash/dot.bashrc" ".bash_aliases"
ln -s "${REPOHOME}/sublime/Preferences.sublime-settings" "./config/sublime-text-3/Packages/User/Preferences.sublime-settings"
```
