#!/bin/bash

# exec &> ~/logfile.txt

# In iTerm2 Session preferences <Advanced> pane setup Semantic History to:
#
# [Run coprocess...]
# ~/dot/item2_open_file_in_emacs.sh +\2 \1

if [[ $1 == "+" ]]; then
    shift
fi

openInFinder()
{
    ext=${1##*.}

    extArray=(
        "png"
        "jpg"
        "pdf"
        "tps"
    )

    if [ "$ext" = "mp3" ]; then
        afplay $1
        exit
    fi

    for ex in ${extArray[@]}
    do
        if [ "$ext" = "$ex" ]; then
            open $1
            exit
        fi
    done

    if [ -d "$1" ]; then
        open $1
        exit
    fi
}

openInFinder $1
openInFinder $2

if ! (/usr/local/bin/emacsclient --eval "t" 2> /dev/null > /dev/null)
then
    nohup /Applications/Emacs.app/Contents/MacOS/Emacs --chdir "${PWD}" $1 $2 &
else
    /usr/local/bin/emacsclient -n $1 $2
fi
