export LC_ALL="en_US.UTF-8"

export GOPATH=$HOME/gopath
export GHQ_ROOT=$GOPATH/src

export PATH=$GOPATH/bin:$HOME/.local/bin:$PATH

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
