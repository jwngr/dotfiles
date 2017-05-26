# dotfiles

This repository stores my standard Unix configuration files for easy
archival and synchronization across machines.  All files are named
with a "dot" prefix to avoid storing hidden files in git.  The file
contents aim for perfect cross-platform compability (OS X / BSD and Linux / GNU).

## Setup Instructions

### Mac OS X

```bash
# Clone this repo
git clone git@github.com:jwngr/dotfiles.git ~/git/dotfiles

# Move to the home directory
cd ~

# Store the path to the cloned repo
REPOHOME="~/git/dotfiles"

# Create symbolic links for each dot file
ln -s "${REPOHOME}/git/dot.gitconfig" ".gitconfig"
ln -s "${REPOHOME}/screen/dot.screenrc" ".screenrc"
ln -s "${REPOHOME}/vim/dot.vimrc" ".vimrc"
ln -s "${REPOHOME}/bash/dot.bashrc" ".bash_profile"
ln -s "${REPOHOME}/bash/dot.git-prompt.sh" ".git-prompt.sh"
ln -s "${REPOHOME}/bash/dot.git-completion.bash" ".git-completion.bash"
ln -s "${REPOHOME}/sublime/Preferences.sublime-settings" "./Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
```

### Ubuntu

```bash
# Clone this repo
git clone git@github.com:jwngr/dotfiles.git ~/git/dotfiles

# Move to the home directory
cd ~

# Store the path to the cloned repo
REPOHOME="~/git/dotfiles"

# Create symbolic links for each dot file
ln -s "${REPOHOME}/git/dot.gitconfig" ".gitconfig"
ln -s "${REPOHOME}/screen/dot.screenrc" ".screenrc"
ln -s "${REPOHOME}/vim/dot.vimrc" ".vimrc"
ln -s "${REPOHOME}/bash/dot.bashrc" ".bashrc"
ln -s "${REPOHOME}/bash/dot.git-prompt.sh" ".git-prompt.sh"
ln -s "${REPOHOME}/bash/dot.git-completion.bash" ".git-completion.bash"
ln -s "${REPOHOME}/sublime/Preferences.sublime-settings" "./config/sublime-text-3/Packages/User/Preferences.sublime-settings"
```


### Global node modules installed

* [`bower`](https://www.npmjs.com/package/bower)
* [`firebase-tools`](https://www.npmjs.com/package/firebase-tools)
* [`forever`](https://www.npmjs.com/package/forever)
* [`grunt`](https://www.npmjs.com/package/grunt)
* [`gulp`](https://www.npmjs.com/package/gulp)
* [`tldr`](https://www.npmjs.com/package/tldr)
* [`updtr`](https://www.npmjs.com/package/updtr)
