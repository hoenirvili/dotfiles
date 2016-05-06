#Go export path
export GOPATH=$HOME/Work/Go

#PYTHON 2.7 path
export PYTHON=/usr/bin/python2.7

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$PYTHON
export GIT_EDITOR=nvim

#ruby misc
export PATH=$PATH:$(ruby -e 'print Gem.user_dir')/bin

if [[ -z $TMUX ]]; then
    if [ -e /usr/share/terminfo/x/xterm+256color ]; then # may be
xterm-256 depending on your distro
        export TERM='xterm-256color'
    else
        export TERM='xterm'
    fi
else
    if [ -e /usr/share/terminfo/s/screen-256color ]; then
        export TERM='screen-256color'
    else
        export TERM='screen'
    fi
fi
