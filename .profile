if [ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ]; then
    echo "Select:"
    echo "0. DWM (default)"
    echo "1. Onlyfox"
    echo "2. Pohui, idem v tty"
    read USER_CHOISE
    USER_CHOISE=$(($USER_CHOISE + 0))
    if [[ $USER_CHOISE -eq 1 ]]
    then
        startx firefox
    elif [[ $USER_CHOISE -eq 2 ]]
    then
        echo "Nice choise)"
    else
        startx
    fi
    startx
fi

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
