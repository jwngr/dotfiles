# dotfiles

This repository stores my standard Unix configuration files for easy archival and synchronization
across machines.  All files are named with a "dot" prefix to avoid storing hidden files in git. The
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
cp bash/dot.bashrc ~/.bash_profile
cp bash/dot.git-prompt.sh ~/.git-prompt.sh
cp bash/dot.git-completion.bash ~/.git-completion.bash
```

Then, manually copy the Sublime Text 3 settings via `Sublime Text > Preferences > Settings` and
install the packages listed in [sublime/README.md](./sublime/README.md).


### Global node modules installed

* [`bower`](https://www.npmjs.com/package/bower)
* [`firebase-tools`](https://www.npmjs.com/package/firebase-tools)
* [`forever`](https://www.npmjs.com/package/forever)
* [`gulp`](https://www.npmjs.com/package/gulp)
* [`tldr`](https://www.npmjs.com/package/tldr)
* [`updtr`](https://www.npmjs.com/package/updtr)
